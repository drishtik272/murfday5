Write-Host "Starting LiveKit Server..."
Start-Process -FilePath ".\livekit-server.exe" -ArgumentList "--dev"

Write-Host "Starting Backend..."
Start-Process -FilePath "powershell" -ArgumentList "-NoExit", "-Command", "cd backend; uv run python src/agent.py dev"

Write-Host "Starting Frontend..."
Start-Process -FilePath "powershell" -ArgumentList "-NoExit", "-Command", "cd frontend; pnpm dev"

Write-Host "All services started in separate windows."
