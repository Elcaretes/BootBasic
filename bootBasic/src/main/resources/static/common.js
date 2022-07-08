/**
 *   공통으로 사용되는 기능 
 */
/**
 * 타임스탬프 문자열을 YYYY.MM 형식을 변환 
 * @param timestamp
 * @returns {String}
 */
function timestampToYYYYMM( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var month = ( dt.getMonth() + 1 < 10 ) ? "0" + ( dt.getMonth() + 1 ) : dt.getMonth() + 1;
	var dtStr = dt.getFullYear() + "." + month;
	return dtStr;
}

/**
 * 타임스탬프 문자열을 YYYY.MM.DD 형식을 변환 
 * @param timestamp
 * @returns {String}
 */
function timestampToYYYYMMDD( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var month = ( dt.getMonth() + 1 < 10 ) ? "0" + ( dt.getMonth() + 1 ) : dt.getMonth() + 1;
	var day = ( dt.getDate() < 10 ) ? "0" + dt.getDate() : dt.getDate();
	var dtStr = dt.getFullYear() + "." + month + "." + day;
	return dtStr;
}

/**
 * 타임스탬프 문자열을 YYYY-MM-DD hh:mm 형식을 변환 
 * @param timestamp
 * @returns
 */
function timestampToYYYYMMDDHHMM( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var month = ( dt.getMonth() + 1 < 10 ) ? "0" + ( dt.getMonth() + 1 ) : dt.getMonth() + 1;
	var day = ( dt.getDate() < 10 ) ? "0" + dt.getDate() : dt.getDate();
	var hour = ( dt.getHours() < 10 ) ? "0" + dt.getHours() : dt.getHours();
	var min = ( dt.getMinutes() < 10 ) ? "0" + dt.getMinutes() : dt.getMinutes();
	var dtStr = dt.getFullYear() + "-" + month + "-" + day + " "
		+ hour + ":" + min;
	return dtStr;
}

/**
 * 타임스탬프 문자열을 YYYY-MM-DD hh:mm:ss 형식을 변환 
 * @param timestamp
 * @returns
 */
function timestampToYYYYMMDDhhmmss( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var month = ( dt.getMonth() + 1 < 10 ) ? "0" + ( dt.getMonth() + 1 ) : dt.getMonth() + 1;
	var day = ( dt.getDate() < 10 ) ? "0" + dt.getDate() : dt.getDate();
	var hour = ( dt.getHours() < 10 ) ? "0" + dt.getHours() : dt.getHours();
	var min = ( dt.getMinutes() < 10 ) ? "0" + dt.getMinutes() : dt.getMinutes();
	var sec = ( dt.getSeconds() < 10 ) ? "0" + dt.getSeconds() : dt.getSeconds();
	var dtStr = dt.getFullYear() + "-" + month + "-" + day + " "
		+ hour + ":" + min + ":" + sec;
	return dtStr;
}

/**
 * 타임스탬프 문자열을 hh:mm 형식을 변환 
 * @param timestamp
 * @returns
 */
function timestampTohhmm( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var hour = ( dt.getHours() < 10 ) ? "0" + dt.getHours() : dt.getHours();
	var min = ( dt.getMinutes() < 10 ) ? "0" + dt.getMinutes() : dt.getMinutes();
	var dtStr = hour + ":" + min;
	return dtStr;
}

/**
 * 타임스탬프 문자열을 hh:mm:ss 형식을 변환 
 * @param timestamp
 * @returns
 */
function timestampTohhmmss( timestamp ) {
	if(timestamp==null) {
		return "-";
	}
	var dt = new Date( parseInt( timestamp ) );
	var hour = ( dt.getHours() < 10 ) ? "0" + dt.getHours() : dt.getHours();
	var min = ( dt.getMinutes() < 10 ) ? "0" + dt.getMinutes() : dt.getMinutes();
	var sec = ( dt.getSeconds() < 10 ) ? "0" + dt.getSeconds() : dt.getSeconds();
	var dtStr = hour + ":" + min + ":" + sec;
	return dtStr;
}