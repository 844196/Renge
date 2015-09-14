#compdef renge

function _renge() {
    _arguments -s : \
        {-l,--list}'[print all quotes list and exit]' \
        {-n,--number}'[specify quote number]':keyword \
        {-f,--file}'[specfiles the dictionary file]:file:_files' \
        {-h,--help}'[display help]' \
        {-v,--version}'[output version]'
}

_renge
