provider "oci" {
    region = "us-ashburn-1"
}
variable "bucket_namespace" {
    default = "idamb95plss4"
}
variable "compartment_ocid" {
    default = "ocid1.compartment.oc1..aaaaaaaaelfomo57ez3eikd6vjcsardqpk7egfgfv4skcix4fb76qbwywj4a"
}
resource "oci_objectstorage_bucket" "create_bucket" {
    # required
    compartment_id = var.compartment_ocid
    name = "my_new_bucket"
    namespace = var.bucket_namespace

    # optional
    access_type = "NoPublicAccess"
}