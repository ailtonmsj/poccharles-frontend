$.ajax({
    url: "http://192.168.49.2:32643/",
    type: "GET",
    success: function (data) {
        document.getElementById('container').innerHTML= data;
        },
    error: function (xhr, status) {
        document.getElementById('container').innerHTML= "Erro ao carregar informações";
    }
});