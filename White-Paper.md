

Blockchain Technology Overview:

At the core of our project lies the innovative infrastructure of BNB Smart Chain (BSC). BSC stands out in the blockchain space for its remarkable scalability and cost-efficiency, making it an ideal choice to underpin our token ecosystem. With BSC's capabilities, we ensure that our platform can handle a high volume of transactions with minimal latency, all while keeping transaction fees low. This robust foundation not only enhances the user experience but also lays the groundwork for the scalability and growth of our project as we expand our ecosystem and user base.

Custom Smart Contracts and Protocols BEP20:

Our project's functionality is governed by meticulously crafted custom smart contracts adhering to the Ethereum Request for Comments (ERC-20) standard. These smart contracts serve as the backbone of our token ecosystem, defining the token's properties, distribution mechanisms, and interaction protocols. By leveraging ERC-20, we ensure compatibility with a wide array of decentralized applications (dApps) and wallets in the Ethereum ecosystem, fostering seamless integration and interoperability. Moreover, our smart contracts are designed with flexibility and security in mind, allowing for the smooth implementation of future upgrades and enhancements to adapt to evolving market demands.

Security Measures and Audits:    

Security is a top priority for our project, and we have implemented comprehensive measures to fortify our platform against potential threats and vulnerabilities. Our security infrastructure encompasses advanced encryption techniques, robust authentication mechanisms, and stringent access controls to safeguard user assets and sensitive data. Additionally, we have subjected our platform to rigorous security audits conducted by CertiK, a globally recognized blockchain security firm renowned for its thoroughness and expertise. The audit report, available at https://skynet.certik.com/projects/seed-photo, provides detailed insights into our security posture, highlighting areas of strength and areas for improvement. By proactively addressing security concerns and continuously refining our security protocols, we are committed to providing our users with a secure and trustworthy environment in which to transact and engage with our platform.


https://ethereum.org/en/developers/docs/standards/tokens/erc-20/


What is ERC-20?


The ERC-20 introduces a standard for Fungible Tokens, in other words, they have a property that makes each Token be exactly the same (in type and value) as another Token. For example, an ERC-20 Token acts just like the ETH, meaning that 1 Token is and will always be equal to all the other Tokens.

Example functionalities ERC-20 provides:
transfer tokens from one account to another
get the current token balance of an account
get the total supply of the token available on the network
approve whether an amount of token from an account can be spent by a third-party account
If a Smart Contract implements the following methods and events, it can be called an ERC-20 Token Contract and, once deployed, it will be responsible to keep track of the created tokens on Ethereum.


Methods:
	function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
function transfer(address _to, uint256 _value) public returns (bool success)
function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
function approve(address _spender, uint256 _value) public returns (bool success)
function allowance(address _owner, address _spender) public view returns (uint256 remaining)

Events:
	event Transfer(address indexed _from, address indexed _to, uint256 _value)
event Approval(address indexed _owner, address indexed _spender, uint256 _value)

https://docs.openzeppelin.com/contracts/3.x/erc20
A note on decimals(18 Decimals)
Often, you’ll want to be able to divide your tokens into arbitrary amounts: say, if you own 5 SEED, you may want to send 1.5 SEED to a friend, and keep 3.5 SEED to yourself. Unfortunately, Solidity and the EVM do not support this behavior: only integer (whole) numbers can be used, which poses an issue. You may send 1 or 2 tokens, but not 1.5.
To work around this, ERC20 provides a decimals field, which is used to specify how many decimal places a token has. To be able to transfer 1.5 SEED, decimals must be at least 1, since that number has a single decimal place.
How can this be achieved? It’s actually very simple: a token contract can use larger integer values, so that a balance of 50 will represent 5 SEED, a transfer of 15 will correspond to 1.5 SEED being sent, and so on.
It is important to understand that decimals are only used for display purposes. All arithmetic inside the contract is still performed on integers, and it is the different user interfaces (wallets, exchanges, etc.) that must adjust the displayed values according to decimals. The total token supply and balance of each account are not specified in SEED: you need to divide by 10^decimals to get the actual SEED amount.
You’ll probably want to use a decimals value of 18, just like Ether and most ERC20 token contracts in use, unless you have a very special reason not to. When minting tokens or transferring them around, you will be actually sending the number num SEED * 10^decimals.

Fixed Minted Supply (1,826,000,000)

Certainly! Here's a revised version including the explanation of the fixed supply and absence of access control:

ERC-20 is a widely adopted technical standard for Ethereum-based tokens, facilitating seamless interaction within the Ethereum ecosystem. Tokens adhering to ERC-20 guidelines are interoperable, meaning they can be easily integrated with various decentralized applications (dApps) and exchanges.

One characteristic of our token, adhering to the ERC-20 standard, is its fixed supply. Unlike some tokens where new tokens can be created (minted) over time, our token has a predetermined total supply that cannot be altered. This fixed supply ensures scarcity and can influence factors like token value and market dynamics.

No Access Control - Fully Decentralized

https://bscscan.com/tx/0x391e2b5e43b37d18ea4e9cb481fb1e5740fd753a7cf41c07ebfc4ef24e2b0886

Furthermore, it's important to note that our token implementation doesn't incorporate access control mechanisms. Access control typically involves restrictions on who can perform certain actions, such as minting new tokens or transferring tokens between addresses. In our token's case, there are no such restrictions, meaning any address on the Ethereum network can interact with and transfer our token freely.
By emphasizing these points, we underscore the unique attributes of our token, including its fixed supply model and the absence of access control, providing transparency and clarity to potential users and stakeholders.

License and Copyright and Verification

Our token has undergone verification on Binance Smart Chain, ensuring its integrity and compatibility within the Binance ecosystem. This verification process confirms that the token's codebase matches the deployed smart contract, providing transparency and assurance to users and stakeholders. You can verify this directly on the Binance Smart Chain Explorer at:

https://bscscan.com/token/0x6730f7A6BbB7b9C8e60843948f7FEB4B6a17B7F7#code.

Additionally, our token operates under the MIT license. The MIT license is an open-source license widely used in the software development community. Under this license, users have the freedom to use, modify, and distribute the token's codebase for both commercial and non-commercial purposes, with minimal restrictions. This license promotes collaboration and innovation, fostering a vibrant community of developers and contributors. By adopting the MIT license, we aim to encourage widespread adoption and participation in our token ecosystem, while ensuring transparency and legal compliance for all parties involved.

BURNING


Our token, verified on Binance Smart Chain, offers a range of features designed to enhance its utility and flexibility within the blockchain ecosystem. You can verify its authenticity directly on the BNB Smart Chain Explorer at:

https://bscscan.com/token/0x6730f7A6BbB7b9C8e60843948f7FEB4B6a17B7F7#code.


One notable feature of our token is its burn option. The burn option allows token holders to permanently remove tokens from circulation by sending them to a designated burn address, effectively reducing the total supply. This mechanism can serve various purposes, such as controlling inflation, increasing scarcity, or aligning with tokenomic strategies. The burn option provides an additional layer of control and versatility for managing the token's supply dynamics, ultimately contributing to its long-term sustainability and value proposition.

Furthermore, our token operates under the permissive MIT license, granting users the freedom to utilize, modify, and distribute the token's codebase according to their needs. This open-source approach encourages innovation and collaboration within the developer community while ensuring legal clarity and transparency for all stakeholders.


Seed Token and Seed.Photo NFT Marketplace

Our token serves as the backbone of our innovative reward system integrated into our NFT marketplace, revolutionizing the way users engage with and benefit from our platform.

As a reward system, our token incentivizes various actions and behaviors within the marketplace, fostering active participation and community engagement. Users are rewarded with tokens for activities such as minting, listing , selling NFTs, as well as for contributing content, providing feedback, or participating in community events.

By leveraging our token as a reward mechanism, we not only incentivize user participation and loyalty but also create a vibrant and dynamic ecosystem where users are empowered to shape the platform's evolution and success. This reinforces our commitment to fostering a thriving community-driven marketplace that rewards and values user contributions.

What is Seed.Photo NFT Marketplace 

Seed.Photo NFT Marketplace is a pioneering platform revolutionizing the NFT space. It stands out as the premier marketplace catering specifically to photographers, offering support for RAW files, the gold standard in photography, alongside other popular image formats.

What sets Seed.Photo apart is its innovative approach to blockchain integration. Unlike traditional NFT marketplaces, Seed.Photo operates across four prominent blockchains: Ethereum, Binance Smart Chain (BSC), Polygon, and SUI. This multi-chain compatibility ensures broader accessibility and flexibility for users, allowing them to choose the blockchain that best suits their preferences and needs.

Moreover, Seed.Photo supports the ERC-721 standard, a widely recognized protocol for creating non-fungible tokens (NFTs). This standard enables the creation of unique, indivisible digital assets, empowering photographers to tokenize their work and collectors to acquire one-of-a-kind pieces securely and transparently.

With its focus on supporting RAW files, multi-chain compatibility, and adherence to the ERC-721 standard, Seed.Photo empowers photographers to monetize their work effectively while providing collectors with a diverse range of high-quality digital assets to explore and invest in.


https://ethereum.org/en/developers/docs/standards/tokens/erc-721/

What is a Non-Fungible Token?
A Non-Fungible Token (NFT) is used to identify something or someone in a unique way. This type of Token is perfect to be used on platforms that offer collectible items, access keys, lottery tickets, numbered seats for concerts and sports matches, etc. This special type of Token has amazing possibilities so it deserves a proper Standard, the ERC-721 came to solve that!


What is ERC-721?
The ERC-721 introduces a standard for NFT, in other words, this type of Token is unique and can have different value than another Token from the same Smart Contract, maybe due to its age, rarity or even something else like its visual. 


If a Smart Contract implements the following methods and events, it can be called an ERC-721 Non-Fungible Token Contract and, once deployed, it will be responsible to keep track of the created tokens on Ethereum.

Methods
   function balanceOf(address _owner) external view returns (uint256);
    function ownerOf(uint256 _tokenId) external view returns (address);
    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes data) external payable;
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external payable;
    function transferFrom(address _from, address _to, uint256 _tokenId) external payable;
    function approve(address _approved, uint256 _tokenId) external payable;
    function setApprovalForAll(address _operator, bool _approved) external;
    function getApproved(uint256 _tokenId) external view returns (address);
    function isApprovedForAll(address _owner, address _operator) external view returns (bool);

Events
   event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);



Marketplace Smart Contract Architecture

Our platform utilizes a sophisticated two-layer smart contract architecture, strategically designed to separate the datastore layer from the business logic layer. This architectural approach offers several significant advantages, primarily centered around upgradability and flexibility.

At the core of this architecture lies the separation of concerns between data storage and business logic. The datastore layer is responsible for securely storing and managing essential data related to the platform's operations, such as user information, transaction records, and asset ownership details. Meanwhile, the business logic layer contains the operational rules, algorithms, and processes governing how the platform functions and interacts with users.

By decoupling these layers, we gain the flexibility to upgrade and improve our platform's business logic independently of the underlying data storage infrastructure. This means that we can seamlessly deploy updates, enhancements, or bug fixes to our platform's functionality without disrupting or compromising the integrity of the stored data. Additionally, it allows us to iterate rapidly, respond to user feedback, and adapt to changing market dynamics more effectively.

Furthermore, this two-layer architecture enhances security by reducing the attack surface and minimizing the risk of vulnerabilities in the smart contracts. Each layer can be independently audited and verified, ensuring that the platform remains resilient against potential threats and exploits.

Overall, our two-layer smart contract architecture provides a solid foundation for our platform, combining robust data management capabilities with flexible and upgradable business logic. This architectural design enables us to maintain agility, scalability, and security as we continue to innovate and evolve our platform to meet the needs of our users and the broader market.

Seed.Photo NFT Functions:

Seed.Photo offers a comprehensive array of features tailored to the needs of photographers, collectors, and enthusiasts alike. Here's a breakdown of its key functionalities:

1. Minting: Photographers can easily mint their digital assets as NFTs directly on the platform, transforming their creative works into unique, tokenized assets ready for sale or auction.

2. Fixed Price Listing: Sellers have the option to list their NFTs at fixed prices, providing a straightforward and convenient way for collectors to purchase desired assets instantly.

3. Auction Listing: Alternatively, sellers can opt for auction-style listings, allowing collectors to bid on items and compete for ownership, driving engagement and market dynamics.

4. Bidding: Collectors can place bids on auction listings, expressing their interest and determining the market value of desirable assets.

5. Automatic Auction Completion: Auctions conclude automatically at scheduled times, ensuring a fair and efficient process for both buyers and sellers while eliminating the need for manual intervention.

6. Burn Functionality: Token owners have the ability to permanently remove tokens from circulation by burning them, contributing to tokenomics strategies such as deflationary mechanisms.

7. Token Transfer: Users can seamlessly transfer NFTs and tokens between wallets, enabling peer-to-peer transactions and facilitating ownership transfers with ease.

8. Bridge Integration: Seed.Photo is integrated with blockchain bridges, enabling seamless interoperability across multiple blockchains. This integration provides users with flexibility in choosing their preferred blockchain for transactions and asset management, enhancing accessibility and user experience.

By offering these diverse and user-centric features, Seed.Photo empowers photographers to monetize their work effectively, provides collectors with a vibrant marketplace to discover and acquire unique assets, and fosters a dynamic ecosystem where creativity thrives and value is exchanged seamlessly.

NFT Bridge in details

In our NFT marketplace, we offer a groundbreaking feature that allows users to seamlessly transfer NFTs from one blockchain to another. Leveraging our platform's innovative technology and blockchain interoperability solutions, users can enjoy the flexibility of moving their digital assets across multiple blockchains with ease.

Whether you hold an NFT on Ethereum, Binance Smart Chain (BSC), Polygon, or SUI, our platform provides a seamless bridge that enables cross-chain transfers. This means that users can transfer their NFTs between any of these supported blockchains, unlocking new possibilities for liquidity, accessibility, and diversification.

For example, if you originally purchased an NFT on Ethereum but prefer to engage with the BSC ecosystem for lower transaction fees or faster processing times, you can effortlessly transfer your NFT from Ethereum to BSC using our platform's intuitive interface. Similarly, users can explore new opportunities and ecosystems by transferring their NFTs across different blockchains, maximizing their utility and value.

By offering cross-chain NFT transfers, our marketplace empowers users to navigate the rapidly evolving blockchain landscape with confidence and convenience. Whether you're an artist, collector, or investor, you can seamlessly move your NFTs across blockchains to suit your preferences and goals, ensuring unparalleled flexibility and interoperability in the digital asset space.
