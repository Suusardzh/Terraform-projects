# Provisioners
`Provisioners` can be used to model specific actions on the local machine or on a remote machine in order to prepare servers or other infrastructure objects for service.
## Provisioner Connection Settings
 Required  via SSH or WinRM

 ### The ```self``` Object
Expressions in connection blocks cannot refer to their parent resource by name. Instead, they can use the special `self` object.

The self object represents the connection's parent resource, and has all of that resource's attributes. For example, use `self.public_ip` to reference an aws_instance's public_ip attribute.

### Provisioners Without a 
If you need to run provisioners that aren't directly associated with a specific resource, you can associate them with a `null_resource`.

### local-exec Provisioner

The `local-exec` provisioner invokes a `local` executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource. 

 ```
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}
```

### ``remote-exec`` Provisioner
The `remote-exec` provisioner invokes a script on a remote resource after it is created. This can be used to run a configuration management tool, `bootstrap` into a cluster, etc. 
```
resource "aws_instance" "web" {
  # ...

  provisioner "remote-exec" {
    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}
```