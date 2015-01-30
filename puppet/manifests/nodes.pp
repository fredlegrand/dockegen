import "profiles"

node web1 {
        include profile::dev
}
node web2 {
        include profile::prod
}
