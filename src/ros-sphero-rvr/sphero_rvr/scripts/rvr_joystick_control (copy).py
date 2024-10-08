#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist
from sphero_rvr_msgs.srv import SetLeds, SetLedsRequest

def joystick_callback(data):
    set_leds([255, 255, 0])
    twist = Twist()

    # Mapeo del joystick
    x_axis = data.axes[0]  # Eje izquierdo-derecha
    rt = data.axes[2]  # RT para acelerar
    lt = data.axes[5]  # LT para frenar
    y_button = data.buttons[3]  # Botón Y para alternar LEDs

    # Calcular velocidad y dirección
    forward_speed = (rt + 1) * 0.5  # 0 a 1 basado en la presión de RT
    reverse_speed = (lt + 1) * 0.5  # 0 a 1 basado en la presión de LT
    twist.linear.x = forward_speed - reverse_speed
    twist.angular.z = x_axis  # Rotación basada en el eje

    # Publicar comandos de movimiento
    cmd_vel_pub.publish(twist)

    # Cambiar LEDs cuando se presiona el botón Y
    if y_button:
        try:
            set_leds([255, 0, 0])  # Cambiar a rojo como ejemplo
        except rospy.ServiceException as e:
            rospy.logerr("Fallo en la llamada al servicio: %s" % e)

def set_leds(rgb_color):
    rospy.wait_for_service('/rvr/set_leds')
    try:
        set_leds_srv = rospy.ServiceProxy('/rvr/set_leds', SetLeds)
        request = SetLedsRequest()
        request.rgb_color = rgb_color
        response = set_leds_srv(request)
        return response
    except rospy.ServiceException as e:
        rospy.logerr("Fallo en la llamada al servicio: %s" % e)

def listener():
    global cmd_vel_pub
    rospy.init_node('rvr_joystick_control')
    cmd_vel_pub = rospy.Publisher('/rvr/cmd_vel', Twist, queue_size=10)
    rospy.Subscriber("/joy", Joy, joystick_callback)

    rospy.spin()

if __name__ == '__main__':
    listener()

