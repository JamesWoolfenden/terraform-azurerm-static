
[![Slalom][logo]](https://slalom.com)

# terraform-azurerm-static

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-static/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-static)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-static.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-static/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

This is an initial module to help create a static site in Azure, itisnt much than a wrapper as it stands, more settings to follow.

```terraform
module "static" {
  source              = "jameswoolfenden/azurerm/static"
  version             = "v0.0.2"
  common_tags         = var.common_tags
  resource_group_name = azurerm_resource_group.marvel.name
}
```

You will need to upload your own 404.html and index.html as documented below.

<https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website-how-to?tabs=azure-portal>

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| account\_name | Name of the storage account | `string` | `"marvelsl"` | no |
| account\_replication\_type | (Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS | `string` | `"LRS"` | no |
| account\_tier | (Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created | `string` | `"Standard"` | no |
| common\_tags | A map of tags | `map` | n/a | yes |
| location | Azure Region to use, defaults to UK South | `string` | `"UK South"` | no |
| resource\_group\_name | Name of resource group in which to deploy storage account. | `string` | `"marvel"` | no |

## Outputs

| Name | Description |
|------|-------------|
| website | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-static/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-static/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-static&url=https://github.com/JamesWoolfenden/terraform-azurerm-static
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-static&url=https://github.com/JamesWoolfenden/terraform-azurerm-static
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-static
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-static
[share_email]: mailto:?subject=terraform-azurerm-static&body=https://github.com/JamesWoolfenden/terraform-azurerm-static
