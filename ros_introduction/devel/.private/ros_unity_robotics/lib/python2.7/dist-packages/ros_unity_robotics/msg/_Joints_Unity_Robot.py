# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_unity_robotics/Joints_Unity_Robot.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Joints_Unity_Robot(genpy.Message):
  _md5sum = "1b28a95cce78395503044b169092bcf3"
  _type = "ros_unity_robotics/Joints_Unity_Robot"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64[] Joints
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['Joints','pick_pose','place_pose']
  _slot_types = ['float64[]','geometry_msgs/Pose','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Joints,pick_pose,place_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Joints_Unity_Robot, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Joints is None:
        self.Joints = []
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
    else:
      self.Joints = []
      self.pick_pose = geometry_msgs.msg.Pose()
      self.place_pose = geometry_msgs.msg.Pose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.Joints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.Joints))
      _x = self
      buff.write(_get_struct_14d().pack(_x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.Joints = s.unpack(str[start:end])
      _x = self
      start = end
      end += 112
      (_x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w,) = _get_struct_14d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.Joints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.Joints.tostring())
      _x = self
      buff.write(_get_struct_14d().pack(_x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.Joints = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 112
      (_x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w,) = _get_struct_14d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14d = None
def _get_struct_14d():
    global _struct_14d
    if _struct_14d is None:
        _struct_14d = struct.Struct("<14d")
    return _struct_14d