pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
                // 利用dockerfile生成容器镜像，dockerfile就在当前项目根目录下
                sh 'sudo docker build -t registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01 .'
            }
        }
        stage('PushImage') {
            steps {
//                一定要加端口号
                //打tag
                sh 'sudo docker login --username=himc700 --password=Hanxu7456 registry.cn-hangzhou.aliyuncs.com'
                //将镜像推送到harbor私有库
                sh 'sudo docker push registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01'
                //删除本地的容器镜像
                sh 'sudo docker rmi -f registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01'
            }
        }
//         stage('Deploy') {
//             steps {
//                 sh 'sudo sh /opt/Start.sh'
//             }
//         }
    }
}

