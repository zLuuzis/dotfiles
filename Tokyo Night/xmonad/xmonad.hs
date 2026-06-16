import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing
import XMonad.Actions.OnScreen
import XMonad.Util.SpawnOnce

meuLayout = spacingWithEdge 3 $ layoutHook def

meuStartup = do
  spawnOnce "xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 144 --pos 0x0 --output eDP-1 --mode 1920x1200 --right-of HDMI-1"
  spawnOnce "xwallpaper --zoom ~/Pictures/Wallpapers/wallhaven-3qwzpy_1920x1080.png"

minhasKeybinds =
  [ ("M-<Return>", spawn "alacritty")
  , ("M-d",        spawn "dmenu_run")
  , ("M-b",        spawn "firefox")
  , ("M-S-r",	   spawn "xmonad --recompile" >> spawn "xmonad --restart")
  , ("M-q", kill)
  ]

main :: IO ()
main = xmonad $ def
     { terminal = "alacritty"
     , modMask = mod4Mask
     , borderWidth = 2
     , normalBorderColor = "#7a786e"
     , focusedBorderColor = "#458588"
     , layoutHook = meuLayout
     , startupHook = meuStartup
     }
     `additionalKeysP` minhasKeybinds