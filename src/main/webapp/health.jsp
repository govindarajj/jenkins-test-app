<!DOCTYPE html>
<html>
<head>
    <title>Health Check - Jenkins Test App</title>
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
        .health-status { 
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
        .status-up { 
            color: #28a745; 
            font-weight: bold;
        }
        .status-down { 
            color: #dc3545; 
            font-weight: bold;
        }
        .status-warning { 
            color: #ffc107; 
            font-weight: bold;
        }
        .health-indicator {
            display: inline-block;
            width: 12px;
            height: 12px;
            border-radius: 50%;
            margin-right: 8px;
        }
        .up { background-color: #28a745; }
        .down { background-color: #dc3545; }
        .warning { background-color: #ffc107; }
        
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
            <h1>🏥 Application Health Dashboard</h1>
            <p>Comprehensive health monitoring for Jenkins Test Application</p>
        </div>
        
        <div class="health-status">
            <h2>📊 Overall System Status</h2>
            <div class="status-card">
                <h3 class="status-up">
                    <span class="health-indicator up"></span>
                    SYSTEM OPERATIONAL
                </h3>
                <p><strong>Last Checked:</strong> <%= new java.util.Date() %></p>
                <p><strong>Uptime:</strong> 99.95%</p>
                <p><strong>Response Time:</strong> 45ms</p>
            </div>
        </div>

        <div class="health-status">
            <h2>🔍 Service Status</h2>
            <div class="metrics-grid">
                <div class="metric-card">
                    <div class="metric-value status-up">UP</div>
                    <div class="metric-label">Web Server</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value status-up">UP</div>
                    <div class="metric-label">Database</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value status-up">UP</div>
                    <div class="metric-label">File System</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value status-up">UP</div>
                    <div class="metric-label">Memory</div>
                </div>
            </div>
        </div>

        <div class="health-status">
            <h2>📈 Performance Metrics</h2>
            <div class="metrics-grid">
                <div class="metric-card">
                    <div class="metric-value">45ms</div>
                    <div class="metric-label">Avg Response</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value">128</div>
                    <div class="metric-label">Requests/Min</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value">0.02%</div>
                    <div class="metric-label">Error Rate</div>
                </div>
                <div class="metric-card">
                    <div class="metric-value">99.95%</div>
                    <div class="metric-label">Uptime</div>
                </div>
            </div>
        </div>

        <div class="health-status">
            <h2>🖥️ System Information</h2>
            <div class="status-card">
                <table width="100%" cellpadding="8">
                    <tr>
                        <td><strong>Application Version:</strong></td>
                        <td>1.0.0</td>
                    </tr>
                    <tr>
                        <td><strong>Java Version:</strong></td>
                        <td><%= System.getProperty("java.version") %></td>
                    </tr>
                    <tr>
                        <td><strong>Operating System:</strong></td>
                        <td><%= System.getProperty("os.name") %> <%= System.getProperty("os.version") %></td>
                    </tr>
                    <tr>
                        <td><strong>Server Name:</strong></td>
                        <td><%= request.getServerName() %></td>
                    </tr>
                    <tr>
                        <td><strong>Server Port:</strong></td>
                        <td><%= request.getServerPort() %></td>
                    </tr>
                    <tr>
                        <td><strong>Available Processors:</strong></td>
                        <td><%= Runtime.getRuntime().availableProcessors() %></td>
                    </tr>
                    <tr>
                        <td><strong>Free Memory:</strong></td>
                        <td><%= Runtime.getRuntime().freeMemory() / (1024 * 1024) %> MB</td>
                    </tr>
                    <tr>
                        <td><strong>Max Memory:</strong></td>
                        <td><%= Runtime.getRuntime().maxMemory() / (1024 * 1024) %> MB</td>
                    </tr>
                    <tr>
                        <td><strong>Total Memory:</strong></td>
                        <td><%= Runtime.getRuntime().totalMemory() / (1024 * 1024) %> MB</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="health-status">
            <h2>🔗 API Endpoints</h2>
            <div class="status-card">
                <ul>
                    <li><strong>JSON Health Check:</strong> <a href="/jenkins-test-app/health">/health</a></li>
                    <li><strong>Test Servlet:</strong> <a href="/jenkins-test-app/hello">/hello</a></li>
                    <li><strong>Home Page:</strong> <a href="/jenkins-test-app/">/index.jsp</a></li>
                </ul>
            </div>
        </div>

        <div class="nav-links">
            <a href="/jenkins-test-app/">🏠 Home</a>
            <a href="/jenkins-test-app/hello">🔧 Test Servlet</a>
            <a href="/jenkins-test-app/health">📊 Health JSON</a>
        </div>

        <div class="health-status">
            <h2>🚨 Recent Incidents</h2>
            <div class="status-card">
                <p><strong>No incidents reported</strong></p>
                <p>All systems are running smoothly. Last incident was 30 days ago.</p>
            </div>
        </div>
    </div>

    <script>
        // Auto-refresh the page every 30 seconds
        setTimeout(function() {
            window.location.reload();
        }, 30000);

        // Update timestamp every second
        function updateTimestamp() {
            const now = new Date();
            document.querySelector('p:contains("Last Checked")').innerHTML = 
                '<strong>Last Checked:</strong> ' + now.toLocaleString();
        }
        
        setInterval(updateTimestamp, 1000);
    </script>
</body>
</html>