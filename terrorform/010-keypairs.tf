resource "openstack_compute_keypair_v2" "combined-keypair" {
  name       = "my-keypair"
  public_key = <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCiVcX6uA65G8CNJ/rrcL6qsFVM98zIk+Ig/c8+YvaP8VtcpSUnKGJrRpJIz6LNBjNSTp6/FN8hFL3lE50ggitCLyW7S2p82qV6HMEH9G2EOVWTjrNMCH7FuW8SJvUKXRVwMR+n1QGhkIgGxqDP+h6U1RVvWKcoqvTNKJ1M
cKjMIRps9f45bAm6oizlYOlolXkFbqHZTXwpks6qyulTdVx0VZxFpck1cZAUhat8pLMHppIPlm9rDStnvwWSCOwg4egNIkPDgTHVLjNrshSNRbyaMjp79t48qnsbz6Xr2VZDpvhh4m1hZQ/u/OHsg8k7UjpZSFnyBvqIRAPscndQBBJbyjeVr4n9hbvsum6LpDR0OFcI6MTc
fMkmWsXDJcQZMegXRcg04dmxZcnIaBkFCXo6gpurjBqlntoQPjn4Ls8QRP+DpdyRuL6QEjdtW0ir4IKL9q8ktD3WLz4A0mQMCeec7WXAcOslDJhNOt1JpdOT6A0MxpdoQS+l+sQXqHoOFIuo7Vl/X2tNqtS0ijkqnuClheH7H+ailfe43FBBVNjNArelTLFD7fUUyK3mWzDq
gPIqEUVYHzvhBzlWJp/xCqEBd6AlPLa+/vr/3TTwtkUhCNykSRK7UMDMNV0i2AeHihh1uEpG/K5L3NaR46O//qhSgxEGLRQ2a6i0fHCa+jYiEQ== root@sysops::07-18-2017

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDlPxXx53e3hWuJdEnOdI1hjoJp42N1ZSc6jlfle8jr7sV/fJiUpKSKOghqOx/Py0bDpeJH+ysWj1EfM7zKvWYJnIgs59vwD1MKltqcombJMI7BAo0VLHc5D4KSDD2/vWKozxQmwFswLewuxRea1wFPN8f8UIFRryAANK1g
dJtraxwp+BPlBnwRK+Vf1jSWv/W1YXsOnhcT9mxObawaKdHtpD6pvsdIPyYLtZBY4HLGLIfyUlGrVTm0UFQiCKPN308PURs6UxXjesIMPqqIgfC8n6CFWLTUsLDX1AcMx4NGSJt2s1YWj6eLed08C71i3Rj7pEhvtUqLlG6k8q64ITduYlqc5jcDHOlxt0pIWkXGCVD4eWlp
fGDcDwWRDCCsPcLn0RK0J3GpFTdEiM7dVQINRoIWFt0f2pWG/zrjW2xOezp6ouztIw64UNNTswrnKpUlw/rmizD8dzerK/4lj7AF7jJ7gcVuOeqY3Fq5Ob/VhyosMbdR+RqmvzScMCOp5uE/rTZl8LPkaWqQ4W3j1JHWV+Tb7/B4fnS3Mho8tikhnwjuDTf9sIGWE6RuZ66p
HZmc1Hcq72lNk7vivCzvanM0M7j7AC9VhMyBA9YKbO36np61EQVj8sMCOfNKkXQ25nXr2v0AxHdjJ8+UAZHjR2WqDc2lGBuN3scivZJRkS5vbQ== carlos@openstack
EOF
}