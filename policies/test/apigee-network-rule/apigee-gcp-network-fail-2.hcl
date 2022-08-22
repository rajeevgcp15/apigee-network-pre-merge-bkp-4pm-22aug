module "tfplan-functions" {
    source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}


mock "tfplan/v2" {
  module {
    source = "mock-tfplan-v2-apigee-network-fail-2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-v2-apigee-network-fail-2.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}