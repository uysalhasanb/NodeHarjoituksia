/** 
* Con
* @summary If the description is long, write your summary here. Otherwise, feel free to remove this.
* @param {ParamDataTypeHere} parameterNameHere - Brief description of the parameter here. Note: For other notations of data types, please refer to JSDocs: DataTypes command.
* @return {ReturnValueDataTypeHere} Brief description of the returning value here.
*/let fmiEpocEsim = 1699272000


const fmi2isoTimestamp = (fmiEpoc) => {
    let unixEpoc = 1000*fmiEpoc
    let isoTimestamp = new Date(unixEpoc);
    return isoTimestamp
}

console.log(fmi2isoTimestamp(1699272600))