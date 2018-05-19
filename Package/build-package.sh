#!/bin/bash

# This will build package. It will use Package.config file to get basic info of package

source ./Package.config

echo ${PKG_NAME}
echo ${BASE_VERSION} 


echo "Making Package directory for ${PKG_NAME}"
if [ -d ${PKG_NAME} ]; then
  echo "Removing existing directory ${PKG_NAME}"
  rm -rf ${PKG_NAME}
fi
mkdir ${PKG_NAME}

# Creating Package.
mkdir -p ${PKG_NAME}/usr/lib/${PKG_NAME}/
 
echo "Copying Deliverables in ${PKG_NAME}"
cp -r Deliverable/artifacts/* ${PKG_NAME}/usr/lib/${PKG_NAME}/

# Copying installation scripts
cp -r Deliverable/DEBIAN ${PKG_NAME}

dpkg-deb --build ${PKG_NAME}

mv ${PKG_NAME}.deb ${PKG_NAME}_${BASE_VERSION}.deb