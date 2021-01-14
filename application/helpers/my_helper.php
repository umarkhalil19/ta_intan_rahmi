<?php
defined('BASEPATH') or exit('No direct script access allowed');

function is_login($error_for, $error_message, $link_redirect)
{
  $ci = &get_instance();
  if ($error_for && $error_message && $link_redirect) {
    if ($ci->session->has_userdata('admin_id')) {
      return true;
    } else {
      $ci->session->set_flashdata($error_for, $error_message);
      redirect($link_redirect);
    }
  } else {
    if ($ci->session->has_userdata('admin_id')) {
      return true;
    } else {
      redirect('home');
    }
  }
}

function is_admin($error_for, $error_message, $link_redirect)
{
  $ci = &get_instance();
  if ($error_for && $error_message && $link_redirect) {
    if ($ci->session->has_userdata('admin_id') and $ci->session->userdata('role') == 1) {
      return true;
    } else {
      $ci->session->set_flashdata($error_for, $error_message);
      redirect($link_redirect);
    }
  } else {
    if ($ci->session->has_userdata('admin_id') and $ci->session->userdata('role') == 1) {
      return true;
    } else {
      redirect('home');
    }
  }
}

//fungsi acak string
function _randString($length)
{
  $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789^";
  $str = '';
  $size = strlen($chars);
  for ($i = 0; $i < $length; $i++) {
    $str .= $chars[rand(3, $size - 5)];
  }
  return $str;
}

function _notif($message)
{
  $notif = $_GET['notif'];
  $notif_cut = substr($notif, 0, 5);
  if ($notif_cut == 'suces') { ?>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      <?php echo $message; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div><br>
  <?php } elseif ($notif_cut == 'error') { ?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      <?php echo $message; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div><br>
<?php }
}

function _createSlug($string)
{
  $a = trim($string);
  $slug = preg_replace('/[^A-Za-z0-9.-]+/', '-', $a);
  //$kalimat = strtolower(url_title($slug));
  $kalimat = strtolower($slug);
  //return strtolower(url_title($string));
  return ($kalimat);
}

function vic_slug_akun($string)
{
  return preg_replace('/[^a-zA-Z0-9.\-]/', '_', $string);
}

/*tanggal dan waktu indonesia
contoh : 
echo tglWaktuIndo(date('d-m-Y H:i:s',time()));
*/
function _tglWaktuIndo($tanggal)
{
  $bulan = array(
    1 => 'Januari',
    2 => 'Februari',
    3 => 'Maret',
    4 => 'April',
    5 => 'Mei',
    6 => 'Juni',
    7 => 'Juli',
    8 => 'Agustus',
    9 => 'September',
    10 => 'Oktober',
    11 => 'November',
    12 => 'Desember'
  );
  $tgl_bln_thn = explode('-', $tanggal);
  $jam_min_dtk = explode(':', $tanggal);

  return substr($tgl_bln_thn[2], 0, 4) . ' ' . $bulan[(int)$tgl_bln_thn[1]] . ' ' . $tgl_bln_thn[0]  . ' / ' . substr($jam_min_dtk[0], 11, 13) . ':' .  $jam_min_dtk[1] . ':' .  $jam_min_dtk[2];
}

function _tglIndo($tanggal)
{
  if (!empty($tanggal)) {
    $bulan = array(
      1 => 'Januari',
      2 => 'Februari',
      3 => 'Maret',
      4 => 'April',
      5 => 'Mei',
      6 => 'Juni',
      7 => 'Juli',
      8 => 'Agustus',
      9 => 'September',
      10 => 'Oktober',
      11 => 'November',
      12 => 'Desember'
    );
    $tgl_bln_thn = explode('-', $tanggal);

    return  substr($tgl_bln_thn[2], 0, 4) . ' ' . $bulan[(int)$tgl_bln_thn[1]] . ' ' . $tgl_bln_thn[0];
  }
}

//echo hariIndo(date('D'));
function _hariIndo($date)
{
  $tanggal = $date;
  $day = date('D', strtotime($tanggal));
  $dayList = array(
    'Sun' => 'Minggu',
    'Mon' => 'Senin',
    'Tue' => 'Selasa',
    'Wed' => 'Rabu',
    'Thu' => 'Kamis',
    'Fri' => 'Jumat',
    'Sat' => 'Sabtu'
  );
  //echo "Tanggal {$tanggal} adalah hari : " . $dayList[$day];
  $result = $dayList[$day];
  return ($result);
}

function _rupiah($nilai)
{
  return 'Rp. ' . number_format($nilai, 0, ",", ".");
}

function _cekAccess($role_id, $menu_id)
{
  $ci = &get_instance();
  $where = array('accessRole_roleId' => $role_id, 'accessRole_menu' => $menu_id);
  $accessrole = $ci->general_m->get_where('accessrole', $where);
  if ($accessrole->num_rows() > 0) {
    return 'checked';
  } else {
    return '';
  }
}

function _cekAccessSubMenu($role_id, $menu_id, $submenu_id)
{
  $ci = &get_instance();
  $where = array('accessRole_roleId' => $role_id, 'accessRole_menu' => $menu_id, 'accessRole_subMenu' => $submenu_id);
  $accessrole = $ci->general_m->get_where('accessrole', $where);
  if ($accessrole->num_rows() > 0) {
    return 'checked';
  } else {
    return '';
  }
}

function _getCompany($field)
{
  $ci = &get_instance();
  $result = $ci->db->get('company')->row_array();
  return $result[$field];
}

function _textpreprosses($kalimat = '')
{
  $ci = &get_instance();
  $proses = strtolower($kalimat);
  //hilangkan tanda baca
  // $proses = str_replace('"', " ", $proses);
  $proses = str_replace("'", " ", $proses);
  $proses = str_replace("-", " ", $proses);
  $proses = str_replace(")", " ", $proses);
  $proses = str_replace("(", " ", $proses);
  $proses = str_replace("\"", " ", $proses);
  $proses = str_replace("/", " ", $proses);
  $proses = str_replace("=", " ", $proses);
  $proses = str_replace(".", " ", $proses);
  $proses = str_replace(",", " ", $proses);
  $proses = str_replace(":", " ", $proses);
  $proses = str_replace(";", " ", $proses);
  $proses = str_replace("!", " ", $proses);
  $proses = str_replace("?", " ", $proses);
  $proses = str_replace("%", " ", $proses);
  $proses = str_replace("1", " ", $proses);
  $proses = str_replace("2", " ", $proses);
  $proses = str_replace("3", " ", $proses);
  $proses = str_replace("4", " ", $proses);
  $proses = str_replace("5", " ", $proses);
  $proses = str_replace("6", " ", $proses);
  $proses = str_replace("7", " ", $proses);
  $proses = str_replace("8", " ", $proses);
  $proses = str_replace("9", " ", $proses);
  $proses = str_replace("0", " ", $proses);

  $wordarray = explode(" ", $proses);

  $astoplist = array("a", "about", "above", "acara", "across", "ada", "adalah", "adanya", "after", "afterwards", "again", "against", "agar", "akan", "akhir", "akhirnya", "akibat", "aku", "all", "almost", "alone", "along", "already", "also", "although", "always", "am", "among", "amongst", "amoungst", "amount", "an", "and", "anda", "another", "antara", "any", "anyhow", "anyone", "anything", "anyway", "anywhere", "apa", "apakah", "apalagi", "are", "around", "as", "asal", "at", "atas", "atau", "awal", "b", "back", "badan", "bagaimana", "bagi", "bagian", "bahkan", "bahwa", "baik", "banyak", "barang", "barat", "baru", "bawah", "be", "beberapa", "became", "because", "become", "becomes", "becoming", "been", "before", "beforehand", "begitu", "behind", "being", "belakang", "below", "belum", "benar", "bentuk", "berada", "berarti", "berat", "berbagai", "berdasarkan", "berjalan", "berlangsung", "bersama", "bertemu", "besar", "beside", "besides", "between", "beyond", "biasa", "biasanya", "bila", "bill", "bisa", "both", "bottom", "bukan", "bulan", "but", "by", "call", "can", "cannot", "cant", "cara", "co", "con", "could", "couldnt", "cry", "cukup", "dalam", "dan", "dapat", "dari", "datang", "de", "dekat", "demikian", "dengan", "depan", "describe", "detail", "di", "dia", "diduga", "digunakan", "dilakukan", "diri", "dirinya", "ditemukan", "do", "done", "down", "dua", "due", "dulu", "during", "each", "eg", "eight", "either", "eleven", "else", "elsewhere", "empat", "empty", "enough", "etc", "even", "ever", "every", "everyone", "everything", "everywhere", "except", "few", "fifteen", "fify", "fill", "find", "fire", "first", "five", "for", "former", "formerly", "forty", "found", "four", "from", "front", "full", "further", "gedung", "get", "give", "go", "had", "hal", "hampir", "hanya", "hari", "harus", "has", "hasil", "hasnt", "have", "he", "hence", "her", "here", "hereafter", "hereby", "herein", "hereupon", "hers", "herself", "hidup", "him", "himself", "hingga", "his", "how", "however", "hubungan", "hundred", "ia", "ie", "if", "ikut", "in", "inc", "indeed", "ingin", "ini", "interest", "into", "is", "it", "its", "itself", "itu", "jadi", "jalan", "jangan", "jauh", "jelas", "jenis", "jika", "juga", "jumat", "jumlah", "juni", "justru", "juta", "kalau", "kali", "kami", "kamis", "karena", "kata", "katanya", "ke", "kebutuhan", "kecil", "kedua", "keep", "kegiatan", "kehidupan", "kejadian", "keluar", "kembali", "kemudian", "kemungkinan", "kepada", "keputusan", "kerja", "kesempatan", "keterangan", "ketiga", "ketika", "khusus", "kini", "kita", "kondisi", "kurang", "lagi", "lain", "lainnya", "lalu", "lama", "langsung", "lanjut", "last", "latter", "latterly", "least", "lebih", "less", "lewat", "lima", "ltd", "luar", "made", "maka", "mampu", "mana", "mantan", "many", "masa", "masalah", "masih", "masing-masing", "masuk", "mau", "maupun", "may", "me", "meanwhile", "melakukan", "melalui", "melihat", "memang", "membantu", "membawa", "memberi", "memberikan", "membuat", "memiliki", "meminta", "mempunyai", "mencapai", "mencari", "mendapat", "mendapatkan", "menerima", "mengaku", "mengalami", "mengambil", "mengatakan", "mengenai", "mengetahui", "menggunakan", "menghadapi", "meningkatkan", "menjadi", "menjalani", "menjelaskan", "menunjukkan", "menurut", "menyatakan", "menyebabkan", "menyebutkan", "merasa", "mereka", "merupakan", "meski", "might", "milik", "mill", "mine", "minggu", "misalnya", "more", "moreover", "most", "mostly", "move", "much", "mulai", "muncul", "mungkin", "must", "my", "myself", "nama", "name", "namely", "namun", "nanti", "neither", "never", "nevertheless", "next", "nine", "no", "nobody", "none", "noone", "nor", "not", "nothing", "now", "nowhere", "of", "off", "often", "oleh", "on", "once", "one", "only", "onto", "or", "orang", "other", "others", "otherwise", "our", "ours", "ourselves", "out", "over", "own", "pada", "padahal", "pagi", "paling", "panjang", "para", "part", "pasti", "pekan", "penggunaan", "penting", "per", "perhaps", "perlu", "pernah", "persen", "pertama", "pihak", "please", "posisi", "program", "proses", "pula", "pun", "punya", "put", "rabu", "rasa", "rather", "re", "ribu", "ruang", "saat", "sabtu", "saja", "salah", "sama", "same", "sampai", "sangat", "satu", "saya", "sebab", "sebagai", "sebagian", "sebanyak", "sebelum", "sebelumnya", "sebenarnya", "sebesar", "sebuah", "secara", "sedang", "sedangkan", "sedikit", "see", "seem", "seemed", "seeming", "seems", "segera", "sehingga", "sejak", "sejumlah", "sekali", "sekarang", "sekitar", "selain", "selalu", "selama", "selasa", "selatan", "seluruh", "semakin", "sementara", "sempat", "semua", "sendiri", "senin", "seorang", "seperti", "sering", "serious", "serta", "sesuai", "setelah", "setiap", "several", "she", "should", "show", "side", "since", "sincere", "six", "sixty", "so", "some", "somehow", "someone", "something", "sometime", "sometimes", "somewhere", "still", "suatu", "such", "sudah", "sumber", "system", "tahu", "tahun", "tak", "take", "tampil", "tanggal", "tanpa", "tapi", "telah", "teman", "tempat", "ten", "tengah", "tentang", "tentu", "terakhir", "terhadap", "terjadi", "terkait", "terlalu", "terlihat", "termasuk", "ternyata", "tersebut", "terus", "terutama", "tetapi", "than", "that", "the", "their", "them", "themselves", "then", "thence", "there", "thereafter", "thereby", "therefore", "therein", "thereupon", "these", "they", "thickv", "thin", "third", "this", "those", "though", "three", "through", "throughout", "thru", "thus", "tidak", "tiga", "tinggal", "tinggi", "tingkat", "to", "together", "too", "top", "toward", "towards", "twelve", "twenty", "two", "ujar", "umum", "un", "under", "until", "untuk", "up", "upaya", "upon", "us", "usai", "utama", "utara", "very", "via", "waktu", "was", "we", "well", "were", "what", "whatever", "when", "whence", "whenever", "where", "whereafter", "whereas", "whereby", "wherein", "whereupon", "wherever", "whether", "which", "while", "whither", "who", "whoever", "whole", "whom", "whose", "why", "wib", "will", "with", "within", "without", "would", "ya", "yaitu", "yakni", "yang", "yet", "you", "your", "yours", "yourself", "yourselves");
  // $stopword = $ci->m_vic->get_data('tbl_stop_word');
  // foreach ($stopword->result() as $sw) {
  //   $proses = str_replace($sw->word, " ", $proses);
  // }
  $filter_array = array_diff($wordarray, $astoplist);
  return $filter_array;
}

?>