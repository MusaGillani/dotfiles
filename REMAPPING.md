# Usage
Goal is to use caps lock button functionally as control + escape

escape on tapping for usage in vim like applications

control to be used when using key combinations e.g ctrl a in tmux

## Mapping

left control -> on tap = Esc

left ctrl -> on hold + hjkl = left, up, down, right arrow keys

change positions of control and caps lock:
    re-map caps lock key position to left control
    re-map left control key position to CAPS lock key


karabiner files:

left control on tap to esc, hold for control

```jsonc
{
    "description": "Change left_control to escape. (Post left control if held)",
    "manipulators": [
        {
            "from": {
                "key_code": "left_control",
                "modifiers": { "optional": ["any"] }
            },
            "to": [{ "key_code": "left_control" }],
            "to_if_alone": [{ "key_code": "escape" }],
            "type": "basic"
        }
    ]
}
```

left control + hjkl for arrow keys
```jsonc
{
    "description": "Left ctrl + hjkl to arrow keys Vim",
    "manipulators": [
        {
            "from": {
                "key_code": "h",
                "modifiers": {
                    "mandatory": ["left_control"],
                    "optional": ["any"]
                }
            },
            "to": [{ "key_code": "left_arrow" }],
            "type": "basic"
        },
        {
            "from": {
                "key_code": "j",
                "modifiers": {
                    "mandatory": ["left_control"],
                    "optional": ["any"]
                }
            },
            "to": [{ "key_code": "down_arrow" }],
            "type": "basic"
        },
        {
            "from": {
                "key_code": "k",
                "modifiers": {
                    "mandatory": ["left_control"],
                    "optional": ["any"]
                }
            },
            "to": [{ "key_code": "up_arrow" }],
            "type": "basic"
        },
        {
            "from": {
                "key_code": "l",
                "modifiers": {
                    "mandatory": ["left_control"],
                    "optional": ["any"]
                }
            },
            "to": [{ "key_code": "right_arrow" }],
            "type": "basic"
        }
    ]
}
```
