const My721 = artifacts.require("My721.sol");

module.exports = async function(deployer){
    await deployer.deploy(My721, "My Collection V2","MNCV");
    const instance = await My721.deployed();

    await instance.mint("https://gateway.pinata.cloud/ipfs/QmRHKNBfgc7jPJxVFZzib8RLCkiSfgRVX2teEUCvFfXuFp");
}