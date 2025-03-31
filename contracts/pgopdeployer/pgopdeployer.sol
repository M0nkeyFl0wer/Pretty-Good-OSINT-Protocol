// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract PGOPDeployer {
    string public constant PROJECT_NAME = "Pretty Good OSINT Protocol";
    string public constant VERSION = "v0.2";
    string public constant PURPOSE = "Register contributors, plugins, and future PGOP deployments.";
    address public immutable deployer;

    mapping(address => bool) public isContributor;

    struct Plugin {
        bytes32 hash;
        string name;
        string description;
        address registeredBy;
        bool approved;
    }

    mapping(bytes32 => Plugin) public plugins;

    event ContributorRegistered(address indexed contributor);
    event PluginRegistered(bytes32 indexed pluginHash, string name, bool approved);
    event PluginApproved(bytes32 indexed pluginHash);

    modifier onlyContributor() {
        require(isContributor[msg.sender], "Not a registered contributor");
        _;
    }

    constructor() {
        deployer = msg.sender;
        isContributor[msg.sender] = true;
        emit ContributorRegistered(msg.sender);
    }

    function registerContributor(address _addr) external onlyContributor {
        require(_addr != address(0), "Zero address not allowed");
        require(!isContributor[_addr], "Already registered");
        isContributor[_addr] = true;
        emit ContributorRegistered(_addr);
    }

    function registerPlugin(bytes32 pluginHash, string calldata name, string calldata description) external onlyContributor {
        require(pluginHash != 0, "Invalid plugin hash");
        require(bytes(name).length > 0, "Name required");
        require(plugins[pluginHash].hash == 0, "Plugin already exists");

        plugins[pluginHash] = Plugin({
            hash: pluginHash,
            name: name,
            description: description,
            registeredBy: msg.sender,
            approved: false
        });

        emit PluginRegistered(pluginHash, name, false);
    }

    function approvePlugin(bytes32 pluginHash) external {
        require(msg.sender == deployer, "Only deployer can approve");
        require(plugins[pluginHash].hash != 0, "Plugin not found");
        plugins[pluginHash].approved = true;
        emit PluginApproved(pluginHash);
    }

    function isPluginApproved(bytes32 pluginHash) external view returns (bool) {
        return plugins[pluginHash].approved;
    }

    function getPlugin(bytes32 pluginHash) external view returns (
        string memory name,
        string memory description,
        address registeredBy,
        bool approved
    ) {
        Plugin memory p = plugins[pluginHash];
        return (p.name, p.description, p.registeredBy, p.approved);
    }

    function getDeployer() external view returns (address) {
        return deployer;
    }

    function getMetadata() external pure returns (string memory, string memory, string memory) {
        return (PROJECT_NAME, VERSION, PURPOSE);
    }
}
