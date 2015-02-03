import "profiles"

node web1 {
        include profile::common::dev
        include profile::drupal::dev
}
node web2 {
        include profile::common::prod
        include profile::drupal::prod
}
node puppet {
        include profile::common::prod
}
node db1 {
        include profile::common::dev
	include profile::mariadb
}
node db2 {
        include profile::common::prod
	include profile::mariadb::prod
}
