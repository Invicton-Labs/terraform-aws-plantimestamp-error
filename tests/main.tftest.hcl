# This one works fine
run "timestamp" {
  command = plan
  variables {
    myvar = timestamp()
  }
}

# This one does not
run "plantimestamp" {
  command = plan
  variables {
    # This function really should exist: 
    # https://developer.hashicorp.com/terraform/language/functions/plantimestamp
    myvar = plantimestamp()
  }
}
