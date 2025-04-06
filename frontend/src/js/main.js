const { createApp } = Vue;

createApp({
  data() {
    return {
        students: [],
        selectedStudent: null,
        isLoading: false,
        isDetailLoading: false
    };
  },
  methods: {
    fetchStudents() {
      this.isLoading = true;
      fetch('http://localhost:8000/students')
        .then(res => res.json())
        .then(data => {
            this.students = data;
        })
        .catch(err => {
            console.error('Oops, something went wrong:', err);
        })
        .finally(() => {
            this.isLoading = false;
        });
    },
    selectStudent(id) {
      
      fetch(`http://localhost:8000/students/${id}`)
        .then(res => res.json())
        .then(data => {
            this.isDetailLoading = true;
            this.selectedStudent = data;
        })
        .catch(err => {
            console.error('Oops, something went wrong:', err);
        })
        .finally(() => {
            this.isDetailLoading = false;
        });
    }
  },
  mounted() {
    this.fetchStudents();
  }
}).mount('#app');
