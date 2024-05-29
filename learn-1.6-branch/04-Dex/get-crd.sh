#!/usr/bin/env bash

echo "********************************* authcodes.dex.coreos.com *********************************"
kubectl get authcodes.dex.coreos.com -A
echo ""

echo "********************************* authrequests.dex.coreos.com *********************************"
kubectl get authrequests.dex.coreos.com -A
echo ""

echo "********************************* connectors.dex.coreos.com *********************************"
kubectl get connectors.dex.coreos.com -A
echo ""

echo "********************************* devicerequests.dex.coreos.com *********************************"
kubectl get devicerequests.dex.coreos.com -A
echo ""

echo "********************************* devicetokens.dex.coreos.com *********************************"
kubectl get devicetokens.dex.coreos.com -A
echo ""

echo "********************************* oauth2clients.dex.coreos.com *********************************"
kubectl get oauth2clients.dex.coreos.com -A
echo ""

echo "********************************* offlinesessionses.dex.coreos.com *********************************"
kubectl get offlinesessionses.dex.coreos.com -A
echo ""

echo "********************************* passwords.dex.coreos.com *********************************"
kubectl get passwords.dex.coreos.com -A
echo ""

echo "********************************* refreshtokens.dex.coreos.com *********************************"
kubectl get refreshtokens.dex.coreos.com -A
echo ""

echo "********************************* signingkeies.dex.coreos.com *********************************"
kubectl get signingkeies.dex.coreos.com -A
echo ""

# $ ./get-crd.sh
# ********************************* authcodes.dex.coreos.com *********************************
# No resources found

# ********************************* authrequests.dex.coreos.com *********************************
# No resources found

# ********************************* connectors.dex.coreos.com *********************************
# No resources found

# ********************************* devicerequests.dex.coreos.com *********************************
# No resources found

# ********************************* devicetokens.dex.coreos.com *********************************
# No resources found

# ********************************* oauth2clients.dex.coreos.com *********************************
# No resources found

# ********************************* offlinesessionses.dex.coreos.com *********************************
# No resources found

# ********************************* passwords.dex.coreos.com *********************************
# No resources found

# ********************************* refreshtokens.dex.coreos.com *********************************
# No resources found

# ********************************* signingkeies.dex.coreos.com *********************************
# NAMESPACE   NAME                  AGE
# auth        openid-connect-keys   17m

# $
