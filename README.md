
# I Am The Optimizor Gas Competition

This was a weird idea I had at 1am but thought could be fun. This has not been tested very well nor optimized - cut me some slack. This is heavily inspired from the project "I Am The Chad".

# Goal:

Create a smart contract (a "player") by implementing the IPlayer interface that uses the smallest size of bytecode and uses the smallest amount of gas to solve the problem.

Your goal is to get the LOWEST score. score = bytecode_size + gasUsed().

# Problem:

An array of length 10 will be pseudo randomly generated along with a target number `n`. Find the 3 indexes in the array where the values of the array at the 3 indexes sum up to `n`.

e.g. inputArr = [1,2,3,4,5,6,7,8,11,15], n = 18.

solution is [1,4,8] because inputArr[1] + inputArr[4] + inputArr[8] == 18.

# What do I win?

If you write a player contract that gets a new low score, you get minted THE OPTIMIZOR NFT and the previous optimizor's NFT is burnt. There will always just be 1 holder - the current best optimizor.

Also, I might comission an art piece of the best optimizors choosing for them after a week.

# Constraints:

The input array will always be length 10. All numbers in the inputArr are [0, 49]. ANY permutation of 3 indexes are allowed as long as they are all unique indexes and sum up to `n`. There will ALWAYS be a set of 3 numbers that add up to `n`.

# How to play:

1. Create a player contract by implementing IPLAYER.sol It is CRUCIAL to set the owner of the player contract to be the EOA you will be calling IAmTheOptimizor.sol from. We check to see msg.sender == player.owner() to prevent random ppl from using your code and cheating.

2. Implement solve(). The first argument is the inputArr and second arg is the target number. Return an array of length 3 of the 3 indexes.

3. Once you finished your player contract, deploy your contract and call becomeTheOptimizor(player_contract_address) when you think you can beat the current best optimizor. NOTE: The txn WILL fail if your player is less optimized than the current optimizors that holds the NFT.

4. You must call the contract via etherscan or via script. There is NO frontend but feel free to create on if you wish :)

Contract address is on mainnet: `0x27761C482000F2fC91E74587576c2B267eEb4546`

Have fun!