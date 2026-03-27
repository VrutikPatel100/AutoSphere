<link rel="stylesheet" href="assets/vendors/feather/feather.css">
<link rel="stylesheet"
	href="assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- <link rel="stylesheet" href="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css"> -->
<link rel="stylesheet"
	href="assets/vendors/datatables.net-bs5/dataTables.bootstrap5.css">
<link rel="stylesheet"
	href="assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/select.dataTables.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="assets/images/favicon.png" />

 <style>
/* ===== Navbar Fix ===== */
.navbar {
    position: fixed;        /* Always on top */
    top: 0;
    left: 0;
    right: 0;
    height: 70px;           /* Adjust as per your navbar */
    z-index: 1100;          /* Higher than sidebar */
    background-color: #fff; /* Original navbar bg */
}

/* ===== Sidebar Fix & Scroll ===== */
.sidebar {
    position: fixed;                /* Sidebar fixed */
    top: 70px;                      /* Below navbar */
    left: 0;
    width: 250px;                   /* Original sidebar width */
    height: calc(100vh - 70px);     /* Full height minus navbar */
    overflow-y: auto;               /* Scrollable content */
    z-index: 1000;                  /* Less than navbar */
    /* background-color: NO CHANGE */ 
}

/* Keep existing sidebar colors & hover intact */
.sidebar .nav .nav-link {
    color: inherit;                 /* Keep original text color */
}

.sidebar .nav .nav-link:hover {
    color: inherit;
    background-color: inherit;
}

/* ===== Main Panel Offset ===== */
.main-panel {
    margin-left: 250px;             /* Offset for sidebar */
    padding: 20px;
}

/* ===== Scrollbar styling optional ===== */
.sidebar::-webkit-scrollbar {
    width: 6px;
}

.sidebar::-webkit-scrollbar-thumb {
    background-color: rgba(0,0,0,0.2);
    border-radius: 3px;
}

.sidebar::-webkit-scrollbar-track {
    background: transparent;
}

/* ===== Responsive ===== */
@media (max-width: 991px) {
    .sidebar {
        position: relative;
        width: 100%;
        height: auto;
        top: 0;
    }
    .main-panel {
        margin-left: 0;
    }
}
</style> 