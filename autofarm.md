### 1. Location Check
- Check place or gameId
  - If matches lobby: User is in lobby → Proceed to step 2
  - If doesn't match: User is in a heist → Go to step 5 (AUTOFARM)

### 2. Data Collection
- Get user stats
- Get user money
- Get other data

### 3. Prestige Check
- Get the clickable button event that triggers the prestige (Hardest thing i had to do)
- Check prestige cost
- If user has enough money:
  - Trigger prestige

### 4. Lobby Creation
- Fire the create lobby remote
- Fire the ready up remote

### 5. AUTOFARM
- Teleport to van
- Activate interact aura
- Drop all bags
- Click the "go to lobby" button if needed (Don't know if this is needed)

### 6. Loop
- Autoexec keeps executing the script
