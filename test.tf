resource "null_resource" "test_resource" {
  provisioner "local-exec" {
    command = "echo '0' > status.txt"

  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo '1' > status.txt"
  }

}