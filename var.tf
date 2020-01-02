variable "img" {
        type = string
        default = "ami-00068cd7555f543d5"  # to access "$var.img"
}
variable "inst" {
        type = string
        default = "t2.micro"
}
variable "list" {
        type = list  # to access "$var.list[0]" , "$var.list[1]"
        default = ["ami-00068cd7555f543d5","t2.micro"]
}

variable "bool" {
        type = boolean # to access "$var.bool"
        default = True
}
variable "map" {
        type = map #to access "$var.map["os"]"
        default = {
                "os" = "ami-00068cd7555f543d5"
                "int" = "t2.micro"
}
}
