# SAMCOIN

In this project, I created a Smart Contract named samcoin, named after me, in which I am issuing 1 million samcoins for people to buy and sell. This buying and selling of samcoins is made secure through the Smart Contract made in Solidity.


GANACHE: 

Ganache is used to interact with transactions and blocks, providing us account address and private key for customers to make transactions. Each time we sign a transaction, the transaction will be added to a block and we will see that happening in real time in Ganache.

MyEtherWallet: 

MyEtherWallet is used as a wallet through which users can buy or sell the coins. It is the interface where customers can see their equity in terms of samcoins as well as its value in terms of USD. 
Functions that can be performed: 
Buy and sell samcoin, find equity of an investor (in USD as well as in terms of samcoin) by using investor’s address.

FUNCTIONING : 

After installing Ganache, MyEtherWallet, and writing the solidity code, the steps are:
1) Make a new workspace in Ganache. Here, you will be able to see accounts, blocks, transactions (although currently empty as it is a new network).
2) Create a new network on MyEtherWallet named samcoin, using URL and Port Number given in Ganache and selecting type as ETH.
3)  In MyEtherWallet, go to Contracts bar, and choose “Deploy Contract”. Byte code will be available on Remix Solidity page. We will access our Wallet using Private Key, which we will get in Ganache. 
4) Choose any one account, and copy its private key to MyEtherWallet page where it is required. 
5) Sign Transaction and Deploy the contract. A few cents of Ether will be used in this transaction and a new block will be mined.
6) After that, we Interact with the Contract using the contract address stored in the Transaction in Ganache. 
7) Putting Contract address and ABI from Remix is the last step.
8) Samcoin is ready to be bought and sold by investors. The available functions are given in the screenshot:

 

Any number of transactions can be made, and the currency is ready to go!

Thank you!
