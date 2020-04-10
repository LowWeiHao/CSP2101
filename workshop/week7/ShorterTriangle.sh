#!/bin/bash

bash ../week6/triangles.sh | sed \
'{  s/The area for a triangle with base/Base/ ; s/and height/Height/ ; s/area is/Area/  }'