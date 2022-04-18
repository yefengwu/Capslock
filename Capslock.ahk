SetCapsLockState "AlwaysOff"

;caps+space switch case
CapsLock & Space::
{
  CapslockState := GetKeyState("CapsLock", "T")
  if CapslockState = 1
    SetCapsLockState "AlwaysOff"
  else
    SetCapsLockState "AlwaysOn"
  KeyWait "``"
}

;caps->esc
CapsLock::send "{ESC}"

;capslock hjkl+nb to switch tab
CapsLock & n::send "^{Tab}"
Capslock & b::send "^+{Tab}"

;capslock+hjkl ->left/right/up/down
Capslock & h::send "{Left}"
CapsLock & j::send "{Down}"
Capslock & k::send "{Up}"
Capslock & l::send "{Right}"

;caps+p/; jump to home/end
Capslock & p::send "{Home}"
Capslock & `;::send "{End}"

;caps+u/o select home/end
Capslock & u::send "+{Home}"
Capslock & o::send "+{End}"

;caps+f/g move to word
Capslock & f::send "^{Left}"
Capslock & g::send "^{Right}"

;Other win keysmap
^Space::send "#{Space}"
!w::send "^{F4}"
!q::send "!{F4}"
