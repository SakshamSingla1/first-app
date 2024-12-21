pipeline {
    agent any  // Use any available agent (node) to run the pipeline

    environment {
        // Set up the JAVA_HOME to OpenJDK 21
        JAVA_HOME = tool name: 'OpenJDK 21', type: 'JDK'
        PATH = "${JAVA_HOME}/bin:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub repository
                git url: 'https://github.com/SakshamSingla1/first-app.git', branch: 'main'
            }
        }
        
        stage('Build') {
            steps {
                // Compile the Java project (if you use Maven or Gradle, modify accordingly)
                script {
                    sh 'javac Sum.java'  // Compile Sum.java
                }
            }
        }

        stage('Test') {
            steps {
                // Run your tests (if you have tests set up with JUnit or another framework)
                script {
                    // For example, if you're using JUnit:
                    sh 'java org.junit.runner.JUnitCore SumTest'  // Run tests, adjust accordingly
                }
            }
        }

        stage('Deploy') {
            steps {
                // If you want to deploy or archive artifacts, do that here
                echo 'Deploy stage - Add deployment steps here if needed.'
                // You can archive the build artifacts here if required
                archiveArtifacts artifacts: '**/*.class', allowEmptyArchive: true
            }
        }
    }

    post {
        always {
            // Clean up or notify if needed
            echo 'Cleaning up after build.'
        }
        success {
            // Actions if the build is successful
            echo 'Build succeeded.'
        }
        failure {
            // Actions if the build fails
            echo 'Build failed.'
        }
    }
}
