#!/bin/sh
cat > /usr/share/nginx/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>aleksandrovSP Netology </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #333;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello from Docker + Nginx! v1.0.1 </h1>
        <h1>Instance: $(hostname)</h1>
        <small>Generated: $(date)</small>
    </div>
</body>
</html>
EOF