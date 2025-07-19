# DefectDojo Upload Report 
The leading application vulnerability management tool.
Built for both DevSecOps and traditional application security
## Usage
1. Clone the repo:
    ```bash
    docker run -it 192.168.1.3:5000/defectdojo:0.0.1 -url "http://192.168.1.10:8080" -api "26565698874123697741" -product-id "1" -engagement-id "1" -scan-type "Trivy Scan" -engagement_name "servie" -file-path "trivy.json" -product-name "shop"
    ```
