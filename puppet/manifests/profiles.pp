class profile::common {
        include ::common
}
# Environments
class profile::common::dev inherits profile::common {
        include ::common::dev
}
class profile::common::prod inherits profile::common {
        include ::common::prod
}
class profile::drupal {
	include ::drupal
}
class profile::drupal::prod inherits profile::drupal {
	include ::drupal::prod
}
class profile::drupal::dev inherits profile::drupal {
	include ::drupal::dev
}
class profile::mariadb {
        include ::mariadb
}
class profile::mariadb::prod inherits profile::mariadb {
        include ::mariadb::prod
}
