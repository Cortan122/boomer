import strutils

type Config* = object
  min_scale*: float
  scroll_speed*: float
  pinch_speed*: float
  drag_friction*: float
  scale_friction*: float
  flashlight_radius*: float
  flashlight_enabled*: bool
  cursor*: string

const defaultConfig* = Config(
  min_scale: 0.01,
  scroll_speed: 1.5,
  pinch_speed: 20,
  drag_friction: 6.0,
  scale_friction: 4.0,
  flashlight_radius: 200.0,
  flashlight_enabled: false,
  cursor: "arrow",
)

proc loadConfig*(filePath: string): Config =
  result = defaultConfig
  for rawLine in filePath.lines:
    let line = rawLine.strip
    if line.len == 0 or line[0] == '#':
      continue
    let pair = line.split('=', 1)
    let key = pair[0].strip
    let value = pair[1].strip
    case key
    of "min_scale":
      result.min_scale = parseFloat(value)
    of "scroll_speed":
      result.scroll_speed = parseFloat(value)
    of "pinch_speed":
      result.pinch_speed = parseFloat(value)
    of "drag_friction":
      result.drag_friction = parseFloat(value)
    of "scale_friction":
      result.scale_friction = parseFloat(value)
    of "flashlight_radius":
      result.flashlight_radius = parseFloat(value)
    of "flashlight_enabled":
      result.flashlight_enabled = parseBool(value)
    of "cursor":
      result.cursor = value
    else:
      quit "Unknown config key `$#`" % [key]

proc generateDefaultConfig*(filePath: string) =
  var f = open(filePath, fmWrite)
  defer: f.close
  f.write("min_scale = ", defaultConfig.min_scale, "\n")
  f.write("scroll_speed = ", defaultConfig.scroll_speed, "\n")
  f.write("pinch_speed = ", defaultConfig.pinch_speed, "\n")
  f.write("drag_friction = ", defaultConfig.drag_friction, "\n")
  f.write("scale_friction = ", defaultConfig.scale_friction, "\n")
  f.write("flashlight_radius = ", defaultConfig.flashlight_radius, "\n")
  f.write("flashlight_enabled = ", defaultConfig.flashlight_enabled, "\n")
  f.write("cursor = ", defaultConfig.cursor, "\n")
