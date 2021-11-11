# jenkins
젠킨스 도커 컴포즈




> 도커 컴포즈, 도커 사전 설치 필요
> 
> 리눅스 버전
> 
> podman, buildah 사용


* 일반 버전은 base 브랜치에 있음. 필요시 사용


<br>
<br>


### 네트워크 생성

<br>

```
sudo docker network create jenkins-network

```

<br>


### 작업 디렉토리 권한 변경
: 리눅스 버전
```
mkdir jenkins_home
sudo chown 1000 jenkins_home/

```

<br>

### 패스 워드 확인
```
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

```
