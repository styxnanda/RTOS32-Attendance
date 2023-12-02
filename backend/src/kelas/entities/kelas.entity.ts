import { Absensi } from 'src/absensi/entities/absensi.entity';
import { Mahasiswa } from 'src/mahasiswa/entities/mahasiswa.entity';
import {
  PrimaryGeneratedColumn,
  Column,
  OneToMany,
  Entity,
  ManyToMany,
  JoinTable,
} from 'typeorm';

@Entity('kelas')
export class Kelas {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  nama: string;

  @OneToMany(() => Absensi, (absensi) => absensi.kelas)
  absensi: Absensi[];

  @ManyToMany(() => Mahasiswa, (mahasiswa) => mahasiswa.kelas)
  mahasiswa: Mahasiswa[];
}
