provider "oci" {
    region = us-ashburn-1
}
variable "bucket_namespace" {
    default = "idamb95plss4"
}
resource "oci_objectstorage_bucket" "create_bucket" {
    # required
    compartment_id = var.compartment_ocid
    name = "my_new_bucket"
    namespace = var.bucket_namespace

    # optional
    access_type = "NoPublicAccess"
}