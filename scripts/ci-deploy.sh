#!/bin/sh -xe
ls -lR binaries/
gh release create "$GITHUB_REF_NAME" binaries/* --generate-notes
