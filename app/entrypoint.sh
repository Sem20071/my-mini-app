#!/bin/sh
cat > /usr/share/nginx/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>My Cloud Page</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            text-align: center; 
            margin: 50px; 
            background: #f0f0f0;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 { color: #333; }
        img { 
            border-radius: 10px;
            margin: 20px 0;
            border: 3px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Instance: $(hostname)</h1>
        <small>Generated: $(date)</small>
    </div>
</body>
</html>
EOF