<!DOCTYPE html>
<html>
<head>
    <title>Jenkins Test App</title>
    <style>
        body { 
            font-family: 'Arial', sans-serif; 
            margin: 0; 
            padding: 0; 
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }
        .container { 
            max-width: 1000px; 
            margin: 0 auto; 
            padding: 20px;
        }
        .header { 
            background: rgba(255, 255, 255, 0.95); 
            padding: 30px; 
            border-radius: 10px; 
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .info { 
            margin: 20px 0; 
            padding: 25px; 
            background: rgba(255, 255, 255, 0.9); 
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .status-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            margin: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .nav-links {
            margin: 20px 0;
        }
        .nav-links a {
            display: inline-block;
            margin: 5px 10px 5px 0;
            padding: 10px 20px;
            background: #667eea;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .nav-links a:hover {
            background: #764ba2;
        }
        .success { color: #28a745; }
        .warning { color: #ffc107; }
        .danger { color: #dc3545; }
        .metrics-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin: 20px 0;
        }
        .metric-card {
            background: white;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .metric-value {
            font-size: 24px;
            font-weight: bold;
            color: #667eea;
        }
        .metric-label {
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🚀 Jenkins Test Application</h1>
            <p>This is a test application for Jenkins CI/CD pipeline testing</p>
        </div>
        
        <div class="info">
            <h2>📊 Application Information</h2>
            <div class="status-card">
                <p><strong>Version:</strong> 1.0.0</p>
                <p><strong>Build Date:</strong> <%= new java.util.Date() %></p>
                <p><strong>Server:</strong> <%= System.getProperty("os.name") %> <%= System.getProperty("os.version") %></p>
                <p><strong>Java Version:</strong> <%= System.getProperty("java.version") %></p>
                <p><strong>JVM Memory:</strong> 
                    <%= Runtime.getRuntime().totalMemory() / (1024 * 1024) %>MB /
                    <%= Runtime.getRuntime().maxMemory() / (1024 * 1024) %>MB
                </p>
            </div>
        </div>

        <div class="info">
            <h2>🔗 Test Links</h2>
            <div class="nav-links">
                <a href="hello">🔧 Test Servlet</a>
                <a href="health">📊 Health Check (JSON)</a>
                <a href="health-page">🏥 Health Dashboard</a>
                <a href="https://jenkins.io" target="_blank">🌐 Jenkins Website</a>
            </div>
        </div>
        
        <div class="info">
            <h2>✅ Pipeline Status</h2>
            <div class="metrics-grid">
                <div class="metric-card">
                    <div class="metric-value success">✅</div>
                    <div class="metric-label">Build</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value success">✅</div>
                    <div class="metric-label">Tests</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value success">✅</div>
                    <div class="metric-label">Deployment</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value success">✅</div>
                    <div class="metric-label">Quality Gates</div>
                </div>
            </div>
        </div>

        <div class="info">
            <h2>📋 Pipeline Stages</h2>
            <div class="status-card">
                <ol style="line-height: 2;">
                    <li><strong>Checkout:</strong> Pull code from repository</li>
                    <li><strong>Build:</strong> Compile source code with Maven</li>
                    <li><strong>Test:</strong> Execute unit tests</li>
                    <li><strong>Package:</strong> Create WAR file</li>
                    <li><strong>Deploy:</strong> Deploy to Tomcat server</li>
                </ol>
            </div>
        </div>

        <div class="info">
            <h2>📈 Application Metrics</h2>
            <div class="metrics-grid">
                <div class="metric-card">
                    <div class="metric-value"><%= Runtime.getRuntime().availableProcessors() %></div>
                    <div class="metric-label">CPU Cores</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value"><%= Runtime.getRuntime().freeMemory() / (1024 * 1024) %>MB</div>
                    <div class="metric-label">Free Memory</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value">99.95%</div>
                    <div class="metric-label">Uptime</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value">v1.0.0</div>
                    <div class="metric-label">Version</div>
                </div>
            </div>
        </div>

        <div class="info">
            <h2>🛠️ Technical Stack</h2>
            <div class="status-card">
                <ul style="line-height: 2;">
                    <li><strong>Backend:</strong> Java Servlets</li>
                    <li><strong>Frontend:</strong> JSP, HTML5, CSS3</li>
                    <li><strong>Build Tool:</strong> Apache Maven</li>
                    <li><strong>CI/CD:</strong> Jenkins Pipeline</li>
                    <li><strong>Container:</strong> Apache Tomcat</li>
                    <li><strong>Testing:</strong> JUnit</li>
                </ul>
            </div>
        </div>

        <div class="info">
            <h2>🎯 Testing Endpoints</h2>
            <div class="status-card">
                <table width="100%" cellpadding="8" style="border-collapse: collapse;">
                    <tr style="border-bottom: 1px solid #eee;">
                        <td><strong>Endpoint</strong></td>
                        <td><strong>Type</strong></td>
                        <td><strong>Description</strong></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #eee;">
                        <td><a href="/jenkins-test-app/hello">/hello</a></td>
                        <td>Servlet</td>
                        <td>Basic servlet functionality test</td>
                    </tr>
                    <tr style="border-bottom: 1px solid #eee;">
                        <td><a href="/jenkins-test-app/health">/health</a></td>
                        <td>JSON API</td>
                        <td>Health check endpoint (JSON response)</td>
                    </tr>
                    <tr style="border-bottom: 1px solid #eee;">
                        <td><a href="/jenkins-test-app/health-page">/health-page</a></td>
                        <td>JSP Page</td>
                        <td>Detailed health dashboard</td>
                    </tr>
                    <tr>
                        <td><a href="/jenkins-test-app/">/</a></td>
                        <td>JSP Page</td>
                        <td>Home page (this page)</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="nav-links" style="text-align: center; margin-top: 30px;">
            <a href="hello">🔧 Test Servlet</a>
            <a href="health">📊 Health JSON</a>
            <a href="health-page">🏥 Health Dashboard</a>
            <a href="https://jenkins.io" target="_blank">🌐 Jenkins Docs</a>
        </div>

        <div class="info" style="text-align: center; background: rgba(255, 255, 255, 0.8);">
            <p><strong>Jenkins Pipeline Test Application</strong> | Version 1.0.0 | Built with Maven</p>
            <p>Deployed successfully via Jenkins Pipeline on <%= new java.util.Date() %></p>
        </div>
    </div>

    <script>
        // Update the timestamp every minute
        function updateTimestamp() {
            const now = new Date();
            const timestampElements = document.querySelectorAll('p:contains("Build Date:")');
            if (timestampElements.length > 0) {
                timestampElements[0].innerHTML = '<strong>Build Date:</strong> ' + now.toLocaleString();
            }
            
            const deployedElements = document.querySelectorAll('p:contains("Deployed successfully")');
            if (deployedElements.length > 0) {
                deployedElements[0].innerHTML = 'Deployed successfully via Jenkins Pipeline on ' + now.toLocaleString();
            }
        }
        
        // Update every minute
        setInterval(updateTimestamp, 60000);
        
        // Add some interactive effects
        document.addEventListener('DOMContentLoaded', function() {
            const metricCards = document.querySelectorAll('.metric-card');
            metricCards.forEach(card => {
                card.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-5px)';
                    this.style.transition = 'transform 0.3s ease';
                });
                card.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0)';
                });
            });
        });
    </script>
</body>
</html>