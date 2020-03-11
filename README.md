# B2B Training

This project is created to help in B2B training and certifications preparation.

## Step 1: Authorize to Noltic Dev Hub

Authorize to Noltic or any other Dev Hub org via SFDX.

## Step 2: Authorize to B2B Dev Org

Authorize to Noltic B2B Dev Org where the package is installed using next credentials:
instance: https://login.salesforce.com
Upgrade B2B package to the new version if there is one. Current installed version is 4.11.

## Step 3: Clone the project and create scratch org

Clone the project and run the next command from terminal/cmd within the project:
MacOS: sh scripts/settings/create_org.sh
Windows: scripts/settings/create_org.bat

## Step 4: Verify the package is installed in scratch org

Open scratch org go to App Launcher and Select B2B. Open CC Admin tab and start setting up the storefront.
[B2B documentation](https://cloudcraze.atlassian.net/wiki/spaces/B2BDOCS411/overview)