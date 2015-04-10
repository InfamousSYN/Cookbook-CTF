# Attributes for libraries recipes
default["libraries"]["i386"] = ["libc6:i386","libncurses5:i386","libstdc++6:i386"]

# Attributes for applications
default["applications"]["packages"] = ["gcc-multilib", "gdb"]
