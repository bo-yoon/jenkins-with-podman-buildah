# jenkins-with-podman-buildah
젠킨스 도커 컴포즈




> 도커 컴포즈, 도커 사전 설치 필요
> 
>  리눅스 베이스
>  aws cli, git, python3, docker 설치
> podman, buildah 설치 


<br>
<br>

## podman 설치 가이드

https://podman.io/getting-started/installation



<br>
<br>

* 일반 버전은 base 브랜치에 있음. 필요시 사용
* aws cli와 git, docker 버전은 jenkins-with-awscli-docker 브랜치에 보관
* 위 이미지에 podman, buildah 를 설치한 버전은 jenkins-with-podman-buildah 브랜치에 보관



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
