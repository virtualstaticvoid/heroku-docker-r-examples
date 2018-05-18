library(tools)

# https://www.rdocumentation.org/packages/tools/versions/3.4.3/topics/testInstalledPackage
testInstalledPackages(scope=c("recommended"), types=c("vignettes"))
