class profile::common {
        include ::common
}

# Environments
class profile::dev inherits profile::common {
        include ::dev
}
class profile::prod inherits profile::common {
        include ::prod
}
