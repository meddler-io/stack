job "restart" {
  datacenters = ["dc1"]

  group "group" {
    restart {
      attempts = 2
      delay    = "30s"
      interval = "1m"
      mode     = "delay"
    }
    task "broken" {
      driver = "docker"
        env {
          RMQ_USERNAME = "user"
          RMQ_PASSWORD = "bitnami"
          RMQ_HOST = "192.168.29.185"

        }

      config {
        // image = "curlimages/curl"
        image = "192.168.29.185:5000/rounak316/dsad:6033fa965b22581da55edb70"
        

        // entrypoint = "/bin/sh"
        // args =  [ "-v",   "http://192.168.29.185:5000"]
        // args = [ "-c",  "ping" , "", "google.com"]
      }
    }
  }
}