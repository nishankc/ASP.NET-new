drawExp = function (chartType, mortage, utilities, tvandothers, insurance, petrol, other, totalExp) {

    if (mortage === "0" && utilities === "0" && tvandothers === "0" && insurance === "0" && petrol === "0" && other === "0") {
        document.getElementById("chartPlaceholderExp").style.display = "none";
        document.getElementById("noDataPlaceholderExp").textContent = "Not enough data to draw chart";
    } else {
        var chartExp = new CanvasJS.Chart("chartContainerExp", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                
                text: "Total Expenses: £" + totalExp
            },
            animationEnabled: true, //disable here

            data: [
        {
            // Change type to "doughnut", "line", "splineArea", etc.
            type: chartType,
            dataPoints: [
                    { label: "Mortgage/Rent", y: parseFloat(mortage), indexLabelFontColor: "#fff" },
                    { label: "Utilities", y: parseFloat(utilities), indexLabelFontColor: "#fff" },
                    { label: "Tv/Phone/Internet", y: parseFloat(tvandothers), indexLabelFontColor: "#fff" },
                    { label: "Insurance", y: parseFloat(insurance), indexLabelFontColor: "#fff" },
                    { label: "Petrol", y: parseFloat(petrol), indexLabelFontColor: "#fff" },
                    { label: "Other", y: parseFloat(other), indexLabelFontColor: "#fff" }
            ]
        }
            ]
        });

        chartExp.render();
        chartExp = {}
        
    }
}

drawIncome = function (chartType, salary, otherIncome, totalIncome) {

    if (salary === "0" && otherIncome === "0") {
        document.getElementById("chartPlaceholderIncome").style.display = "none";
        document.getElementById("noDataPlaceholderIncome").textContent = "Not enough data to draw chart";
    } else {
        var chartIncome = new CanvasJS.Chart("chartContainerIncome", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                
                text: "Total Income: £" + totalIncome
            },
            animationEnabled: true, //disable here

            data: [
        {
            // Change type to "doughnut", "line", "splineArea", etc.
            type: chartType,
            dataPoints: [
                    { label: "Salary", y: parseFloat(salary), indexLabelFontColor: "#fff" },
                    { label: "Other Income", y: parseFloat(otherIncome), indexLabelFontColor: "#fff" }
                    
            ]
        }
            ]
        });

        chartIncome.render();
        chartIncome = {}
    }
}

