export UNIT=$(                                                         \
      docker run                                                        \
      --mount type=bind,src="$(pwd)/config/",dst=/docker-entrypoint.d/   \
      --mount type=bind,src="$(pwd)/state",dst=/var/lib/unit             \
      --mount type=bind,src="$(pwd)/webapp",dst=/www                     \
      -p 8080:8000 unit-webapp                                           \
  )