CoreGraphics    :: #system_library "CoreGraphics";
CGEventTapProxy :: *void;
CGEventRef      :: *void;
CGEventMask     :: u64;
CGEventFlags    :: u64;
CGEventType     :: u32;
CGEventField    :: u32;

CGEventGetFlags             :: (event: CGEventRef) -> CGEventFlags #foreign CoreGraphics;
CGEventGetIntegerValueField :: (event: CGEventRef, field: CGEventField) -> s64 #foreign CoreGraphics;

CGEventTapEnable    :: (tap: CFMachPortRef, enable: bool) #foreign CoreGraphics;
CGEventTapIsEnabled :: (tap: CFMachPortRef) -> bool #foreign CoreGraphics;
CGEventTapCreate    :: (tap: CGEventTapLocation, place: CGEventTapPlacement, options: CGEventTapOptions, mask: CGEventMask, callback: CGEventTapCallBack, user_data: *void) -> CFMachPortRef #foreign CoreGraphics;
CGEventTapCallBack  :: #type (proxy: *void, type: CGEventType, event: CGEventRef, user_data: *void) -> event: CGEventRef #c_call;

using CGEventTapLocation :: enum u32 {
    kCGHIDEventTap :: 0;
    kCGSessionEventTap;
    kCGAnnotatedSessionEventTap;
}

using CGEventTapPlacement :: enum u32 {
    kCGHeadInsertEventTap :: 0;
    kCGTailAppendEventTap;
}

using CGEventTapOptions :: enum u32 {
    kCGEventTapOptionDefault    :: 0x00000000;
    kCGEventTapOptionListenOnly :: 0x00000001;
}

/*
 *  Summary:
 *    Virtual keycodes
 *
 *  Discussion:
 *    These constants are the virtual keycodes defined originally in
 *    Inside Mac Volume V, pg. V-191. They identify physical keys on a
 *    keyboard. Those constants with "ANSI" in the name are labeled
 *    according to the key position on an ANSI-standard US keyboard.
 *    For example, kVK_ANSI_A indicates the virtual keycode for the key
 *    with the letter 'A' in the US keyboard layout. Other keyboard
 *    layouts may have the 'A' key label on a different physical key;
 *    in this case, pressing 'A' will generate a different virtual
 *    keycode.
 */
kVK_ANSI_A              : u16 : 0x00;
kVK_ANSI_S              : u16 : 0x01;
kVK_ANSI_D              : u16 : 0x02;
kVK_ANSI_F              : u16 : 0x03;
kVK_ANSI_H              : u16 : 0x04;
kVK_ANSI_G              : u16 : 0x05;
kVK_ANSI_Z              : u16 : 0x06;
kVK_ANSI_X              : u16 : 0x07;
kVK_ANSI_C              : u16 : 0x08;
kVK_ANSI_V              : u16 : 0x09;
kVK_ANSI_B              : u16 : 0x0B;
kVK_ANSI_Q              : u16 : 0x0C;
kVK_ANSI_W              : u16 : 0x0D;
kVK_ANSI_E              : u16 : 0x0E;
kVK_ANSI_R              : u16 : 0x0F;
kVK_ANSI_Y              : u16 : 0x10;
kVK_ANSI_T              : u16 : 0x11;
kVK_ANSI_1              : u16 : 0x12;
kVK_ANSI_2              : u16 : 0x13;
kVK_ANSI_3              : u16 : 0x14;
kVK_ANSI_4              : u16 : 0x15;
kVK_ANSI_6              : u16 : 0x16;
kVK_ANSI_5              : u16 : 0x17;
kVK_ANSI_Equal          : u16 : 0x18;
kVK_ANSI_9              : u16 : 0x19;
kVK_ANSI_7              : u16 : 0x1A;
kVK_ANSI_Minus          : u16 : 0x1B;
kVK_ANSI_8              : u16 : 0x1C;
kVK_ANSI_0              : u16 : 0x1D;
kVK_ANSI_RightBracket   : u16 : 0x1E;
kVK_ANSI_O              : u16 : 0x1F;
kVK_ANSI_U              : u16 : 0x20;
kVK_ANSI_LeftBracket    : u16 : 0x21;
kVK_ANSI_I              : u16 : 0x22;
kVK_ANSI_P              : u16 : 0x23;
kVK_ANSI_L              : u16 : 0x25;
kVK_ANSI_J              : u16 : 0x26;
kVK_ANSI_Quote          : u16 : 0x27;
kVK_ANSI_K              : u16 : 0x28;
kVK_ANSI_Semicolon      : u16 : 0x29;
kVK_ANSI_Backslash      : u16 : 0x2A;
kVK_ANSI_Comma          : u16 : 0x2B;
kVK_ANSI_Slash          : u16 : 0x2C;
kVK_ANSI_N              : u16 : 0x2D;
kVK_ANSI_M              : u16 : 0x2E;
kVK_ANSI_Period         : u16 : 0x2F;
kVK_ANSI_Grave          : u16 : 0x32;
kVK_ANSI_KeypadDecimal  : u16 : 0x41;
kVK_ANSI_KeypadMultiply : u16 : 0x43;
kVK_ANSI_KeypadPlus     : u16 : 0x45;
kVK_ANSI_KeypadClear    : u16 : 0x47;
kVK_ANSI_KeypadDivide   : u16 : 0x4B;
kVK_ANSI_KeypadEnter    : u16 : 0x4C;
kVK_ANSI_KeypadMinus    : u16 : 0x4E;
kVK_ANSI_KeypadEquals   : u16 : 0x51;
kVK_ANSI_Keypad0        : u16 : 0x52;
kVK_ANSI_Keypad1        : u16 : 0x53;
kVK_ANSI_Keypad2        : u16 : 0x54;
kVK_ANSI_Keypad3        : u16 : 0x55;
kVK_ANSI_Keypad4        : u16 : 0x56;
kVK_ANSI_Keypad5        : u16 : 0x57;
kVK_ANSI_Keypad6        : u16 : 0x58;
kVK_ANSI_Keypad7        : u16 : 0x59;
kVK_ANSI_Keypad8        : u16 : 0x5B;
kVK_ANSI_Keypad9        : u16 : 0x5C;

// Layout independent vkeys:
kVK_Return        : u16 : 0x24;
kVK_Tab           : u16 : 0x30;
kVK_Space         : u16 : 0x31;
kVK_Delete        : u16 : 0x33;
kVK_Escape        : u16 : 0x35;
kVK_Command       : u16 : 0x37;
kVK_Shift         : u16 : 0x38;
kVK_CapsLock      : u16 : 0x39;
kVK_Option        : u16 : 0x3A;
kVK_Control       : u16 : 0x3B;
kVK_RightCommand  : u16 : 0x36;
kVK_RightShift    : u16 : 0x3C;
kVK_RightOption   : u16 : 0x3D;
kVK_RightControl  : u16 : 0x3E;
kVK_Function      : u16 : 0x3F;
kVK_F17           : u16 : 0x40;
kVK_VolumeUp      : u16 : 0x48;
kVK_VolumeDown    : u16 : 0x49;
kVK_Mute          : u16 : 0x4A;
kVK_F18           : u16 : 0x4F;
kVK_F19           : u16 : 0x50;
kVK_F20           : u16 : 0x5A;
kVK_F5            : u16 : 0x60;
kVK_F6            : u16 : 0x61;
kVK_F7            : u16 : 0x62;
kVK_F3            : u16 : 0x63;
kVK_F8            : u16 : 0x64;
kVK_F9            : u16 : 0x65;
kVK_F11           : u16 : 0x67;
kVK_F13           : u16 : 0x69;
kVK_F16           : u16 : 0x6A;
kVK_F14           : u16 : 0x6B;
kVK_F10           : u16 : 0x6D;
kVK_F12           : u16 : 0x6F;
kVK_F15           : u16 : 0x71;
kVK_Help          : u16 : 0x72;
kVK_Home          : u16 : 0x73;
kVK_PageUp        : u16 : 0x74;
kVK_ForwardDelete : u16 : 0x75;
kVK_F4            : u16 : 0x76;
kVK_End           : u16 : 0x77;
kVK_F2            : u16 : 0x78;
kVK_PageDown      : u16 : 0x79;
kVK_F1            : u16 : 0x7A;
kVK_LeftArrow     : u16 : 0x7B;
kVK_RightArrow    : u16 : 0x7C;
kVK_DownArrow     : u16 : 0x7D;
kVK_UpArrow       : u16 : 0x7E;

Mod_Alt      : u64 : 0x00080000;
Mod_LAlt     : u64 : 0x00000020;
Mod_RAlt     : u64 : 0x00000040;
Mod_Shift    : u64 : 0x00020000;
Mod_LShift   : u64 : 0x00000002;
Mod_RShift   : u64 : 0x00000004;
Mod_Cmd      : u64 : 0x00100000;
Mod_LCmd     : u64 : 0x00000008;
Mod_RCmd     : u64 : 0x00000010;
Mod_Control  : u64 : 0x00040000;
Mod_LControl : u64 : 0x00000001;
Mod_RControl : u64 : 0x00002000;
Mod_Fn       : u64 : 0x00800000;

kCGEventKeyDown                :: 10;
kCGEventTapDisabledByTimeout   :: 0xFFFFFFFE;
kCGEventTapDisabledByUserInput :: 0xFFFFFFFF;
kCGKeyboardEventKeycode        :: 9;
