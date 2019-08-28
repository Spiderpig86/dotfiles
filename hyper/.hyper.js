// -- hyper-stylesheet-hash:36450936f3c16fb0d874ee43eddaa01b --
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // Choose either "stable" for receiving highly polished,
    // or "canary" for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Inconsolata Nerd Font Complete Windows Compatible", "Noto Mono for Powerline", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(181, 137, 0, 0.6)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // backgroundColor: '#002b36',

    // border color (window, tabs)
    borderColor: '#333',

    // size of the window
    windowSize: [1200, 600],

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '.5rem .5rem 1.3rem .5rem',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    // colors: {
    //   lightBlack:     '#586e75',
    //   black:          '#073642',
    //   lightGreen:     '#ffd454',
    //   lightYellow:    '#657b83',
    //   lightBlue:      '#76b1ae',
    //   lightCyan:      '#285151',
    //   white:          '#59450b',
    //   lightWhite:     '#59450b',
    //   yellow:         '#b58900',
    //   lightRed:       '#cb4b16',
    //   red:            '#dc322f',
    //   magenta:        '#d33682',
    //   lightMagenta:   '#6c71c4',
    //   blue:           '#268bd2',
    //   cyan:           '#2aa198',
    //   green:          '#d7ef39'
    // },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // Powershell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: 'C:\\Windows\\System32\\bash.exe',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    hyperTabs: {
      tabIconsColored: true,
      closeAlign: 'right',
    },
    opacity: {
      focus: 0.95,
      blur: 0.55
    },
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    // 'hyperterm-atom-dark',
    // 'hyper-chesterish',
    // 'hyper-solarized-dark',
    // 'hyper-nord',
    'hyper-electron-highlighter',
    // 'hyper-firewatch',
    'hyper-dark-scrollbar',
    // 'hyper-arc-dark-controls', // Try to match my linux theme
    // 'hyperline',
    'hyperlinks',
    'hyper-tabs-enhanced', // high CPU usage
    'hyperterm-tabs',
    'hypercwd',
    'hyper-opacity',
    'hyper-stylesheet'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
