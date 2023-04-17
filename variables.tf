variable "router_roles" {
    description = "the edge router roles that represent public routers that should advertise availability to edge client identities for edge connections"
    type = list
    default = ["#public-routers"]
}

variable "identity_roles" {
    description = "the identity roles that should use this public router policy"
    default = ["#all"]
}

variable "service_router_roles" {
    description = "limit the routers by which service_roles can be used; if not #all you must provide a separate service router policy for each service"
    type = list
    default = ["#all"]
}
variable "service_roles" {
    description = "the service roles that should use this public router policy"
    default = ["#all"]
}

variable "name" {
    description = "name of the router policy and service router policy to create"
    default = "public-routers"
}

variable "identity_role_semantic" {
    description = "policy semantic to apply to identity roles"
    default = "AnyOf"
}

variable "service_role_semantic" {
    description = "policy semantic to apply to service roles"
    default = "AnyOf"
}
