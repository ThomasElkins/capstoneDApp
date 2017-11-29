pragma solidity ^0.4.18;

contract Voting {
  /*
  The key of the mapping is the candidates name stored as type bytes32 and value is
  an unsigned integer to store the vote count
  */

  mapping (bytes32 => uint8) public votesReceived;

  /*
   store the list of candidates
  */

  bytes32[] public candidateList;

  /*
  Array of canidates
  */
  function Voting(bytes32[] candidateNames) public {
    candidateList = candidateNames;
  }

  // Votes per canidate
  function totalVotesFor(bytes32 candidate) view public returns (uint8) {
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }

  // Cast a vote
  function voteForCandidate(bytes32 candidate) public {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
  }

  function validCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }
}
