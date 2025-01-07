# Jenkins & jenkins-agent
## To Have Jenkins server And Run your pipeline on Agent.

## Prerequisites
1. install docker & docker-compose:
    ```bash
    https://docs.docker.com/engine/install/
    ```

## Usage
1. Need To Have ssh-key with command 
   ``` bash 
       ssh-keygen
    ```
2. Copy publickey into composefile agent
    ``` bash
        environment:
        - JENKINS_AGENT_SSH_PUBKEY=<public-key here>
    ```
3. Run composefile
    ``` bash
        docker compose up -d
    ```
4. Install plugins ssh build agent
5. Add New Node 
   ```
   str
   
   ```
