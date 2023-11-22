path+=('/home/sleiphir/.config/scripts')

export PATH

# Set vi mode cursor
export VI_MODE_SET_CURSOR=true

# No Esc delay
export KEYTIMEOUT=1

# Add go bin to path
export PATH=$PATH:$(go env GOPATH)/bin

# Set JAVA_HOME
export JAVA_HOME=$HOME/.jdks/jdk-20.0.2

export GPG_TTY=$(tty)
