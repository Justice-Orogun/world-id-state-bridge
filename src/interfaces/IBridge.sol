pragma solidity ^0.8.15;

/// @title State Bridge Interface
/// @author Worldcoin
/// @notice contains the interface for the State Bridge contract to send a root to World ID supported networks
/// @custom:usage IBridge(stateBridgeAddress).sendRootMultichain(root);
interface IBridge {
    /// @notice Sends the latest Semaphore root to all chains.
    /// @dev Calls this method on the L1 Proxy contract to relay roots and timestamps to WorldID supported chains.
    /// @param root The latest Semaphore root.
    function sendRootMultichain(uint256 root) external;
}
